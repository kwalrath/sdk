// Copyright (c) 2016, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:analyzer/dart/ast/ast.dart';
import 'package:analyzer/dart/ast/token.dart';
import 'package:analyzer/file_system/file_system.dart';
import 'package:analyzer/file_system/memory_file_system.dart';
import 'package:analyzer/src/dart/sdk/patch.dart';
import 'package:analyzer/src/dart/sdk/sdk.dart';
import 'package:analyzer/src/generated/engine.dart';
import 'package:analyzer/src/generated/sdk.dart';
import 'package:analyzer/src/generated/source.dart';
import 'package:analyzer/src/util/fast_uri.dart';
import 'package:test/test.dart';
import 'package:test_reflective_loader/test_reflective_loader.dart';

main() {
  defineReflectiveSuite(() {
    defineReflectiveTests(SdkPatcherTest);
  });
}

@reflectiveTest
class SdkPatcherTest {
  MemoryResourceProvider provider = new MemoryResourceProvider();
  Folder sdkFolder;
  FolderBasedDartSdk sdk;

  SdkPatcher patcher = new SdkPatcher();
  RecordingErrorListener listener = new RecordingErrorListener();

  void setUp() {
    sdkFolder = provider.getFolder(_p('/sdk'));
  }

  test_directive_fail_export() {
    expect(() {
      _doTopLevelPatching(
          r'''
import 'a.dart';
''',
          r'''
export 'c.dart';
''');
    }, throwsArgumentError);
  }

  test_directive_import() {
    CompilationUnit unit = _doTopLevelPatching(
        r'''
import 'a.dart';
part 'b.dart';
int bar() => 0;
''',
        r'''
import 'c.dart';
''');
    _assertUnitCode(unit,
        "import 'a.dart'; part 'b.dart'; import 'c.dart'; int bar() => 0;");
  }

  test_fail_noSuchLibrary() {
    expect(() {
      _setSdkLibraries('const LIBRARIES = const {};');
      _createSdk();
      File file = provider.newFile(_p('/sdk/lib/test/test.dart'), '');
      Source source = file.createSource(FastUri.parse('dart:test'));
      CompilationUnit unit = SdkPatcher.parse(source, true, listener);
      patcher.patch(sdk, SdkLibraryImpl.VM_PLATFORM, listener, source, unit);
    }, throwsArgumentError);
  }

  test_fail_patchFileDoesNotExist() {
    expect(() {
      _setSdkLibraries(r'''
final Map<String, LibraryInfo> LIBRARIES = const <String, LibraryInfo> {
  'test' : const LibraryInfo(
    'test/test.dart',
    patches: {VM_PLATFORM: ['does_not_exists.dart']}),
};''');
      _createSdk();
      File file = provider.newFile(_p('/sdk/lib/test/test.dart'), '');
      Source source = file.createSource(FastUri.parse('dart:test'));
      CompilationUnit unit = SdkPatcher.parse(source, true, listener);
      patcher.patch(sdk, SdkLibraryImpl.VM_PLATFORM, listener, source, unit);
    }, throwsArgumentError);
  }

  test_topLevel_fail_topLevelVariable() {
    expect(() {
      _doTopLevelPatching(
          r'''
int foo() => 0;
''',
          r'''
int _bar;
''');
    }, throwsArgumentError);
  }

  test_topLevel_function_append() {
    CompilationUnit unit = _doTopLevelPatching(
        r'''
int foo() => 0;
''',
        r'''
int _bar1() => 1;
int _bar2() => 2;
''');
    _assertUnitCode(
        unit, 'int foo() => 0; int _bar1() => 1; int _bar2() => 2;');

    FunctionDeclaration foo = unit.declarations[0];
    FunctionDeclaration bar1 = unit.declarations[1];
    FunctionDeclaration bar2 = unit.declarations[2];

    _assertPrevNextToken(foo.endToken, bar1.beginToken);
    _assertPrevNextToken(bar1.endToken, bar2.beginToken);
  }

  test_topLevel_function_fail_noExternalKeyword() {
    expect(() {
      _doTopLevelPatching(
          r'''
int foo();
''',
          r'''
@patch
int foo() => 1;
''');
    }, throwsArgumentError);
  }

  test_topLevel_function_fail_notPrivate() {
    expect(() {
      _doTopLevelPatching(
          r'''
int foo() => 1;
''',
          r'''
int bar() => 2;
''');
    }, throwsArgumentError);
  }

  test_topLevel_functionTypeAlias_append() {
    CompilationUnit unit = _doTopLevelPatching(
        r'''
int foo() => 0;
''',
        r'''
typedef int _bar1();
typedef int _bar2();
''');
    _assertUnitCode(
        unit, 'int foo() => 0; typedef int _bar1(); typedef int _bar2();');

    FunctionDeclaration foo = unit.declarations[0];
    FunctionTypeAlias bar1 = unit.declarations[1];
    FunctionTypeAlias bar2 = unit.declarations[2];

    _assertPrevNextToken(foo.endToken, bar1.beginToken);
    _assertPrevNextToken(bar1.endToken, bar2.beginToken);
    expect(unit.endToken.type, TokenType.EOF);
    expect(bar2.endToken.next, same(unit.endToken));
  }

  test_topLevel_functionTypeAlias_fail_hasAnnotation() {
    expect(() {
      _doTopLevelPatching(
          r'''
int foo() => 0;
''',
          r'''
@patch
typedef int _bar();
''');
    }, throwsArgumentError);
  }

  test_topLevel_functionTypeAlias_fail_notPrivate() {
    expect(() {
      _doTopLevelPatching(
          r'''
int foo() => 0;
''',
          r'''
typedef int bar();
''');
    }, throwsArgumentError);
  }

  test_topLevel_patch_function() {
    CompilationUnit unit = _doTopLevelPatching(
        r'''
external int foo();
int bar() => 2;
''',
        r'''
@patch
int foo() => 1;
''');
    _assertUnitCode(unit, 'int foo() => 1; int bar() => 2;');

    // Prepare functions.
    FunctionDeclaration foo = unit.declarations[0];
    FunctionDeclaration bar = unit.declarations[1];

    // The "external" token is removed from the stream.
    {
      expect(foo.externalKeyword, isNull);
      Token token = foo.beginToken;
      expect(token.lexeme, 'int');
      expect(token.previous.type, TokenType.EOF);
    }

    // The body tokens are included into the patched token stream.
    {
      FunctionExpression fooExpr = foo.functionExpression;
      FunctionBody fooBody = fooExpr.body;
      expect(fooBody.beginToken.previous, same(fooExpr.parameters.endToken));
      expect(fooBody.endToken.next, same(bar.beginToken));
    }
  }

  test_topLevel_patch_function_blockBody() {
    CompilationUnit unit = _doTopLevelPatching(
        r'''
external int foo();
''',
        r'''
@patch
int foo() {int v = 1; return v + 2;}
''');
    _assertUnitCode(unit, 'int foo() {int v = 1; return v + 2;}');
  }

  test_topLevel_patch_getter() {
    CompilationUnit unit = _doTopLevelPatching(
        r'''
external int get foo;
int bar() => 2;
''',
        r'''
@patch
int get foo => 1;
''');
    _assertUnitCode(unit, 'int get foo => 1; int bar() => 2;');
  }

  test_topLevel_patch_setter() {
    CompilationUnit unit = _doTopLevelPatching(
        r'''
external void set foo(int val);
int bar() => 2;
''',
        r'''
@patch
void set foo(int val) {}
''');
    _assertUnitCode(unit, 'void set foo(int val) {} int bar() => 2;');
  }

  void _assertUnitCode(CompilationUnit unit, String expectedCode) {
    expect(unit.toSource(), expectedCode);
  }

  void _createSdk() {
    sdk = new FolderBasedDartSdk(provider, sdkFolder);
    sdk.analysisOptions = new AnalysisOptionsImpl()..strongMode = true;
  }

  CompilationUnit _doTopLevelPatching(String baseCode, String patchCode) {
    _setSdkLibraries(r'''
final Map<String, LibraryInfo> LIBRARIES = const <String, LibraryInfo> {
  'test' : const LibraryInfo(
    'test/test.dart',
    patches: {VM_PLATFORM: ['test/test_patch.dart']}),
};''');
    File file = provider.newFile(_p('/sdk/lib/test/test.dart'), baseCode);
    provider.newFile(_p('/sdk/lib/test/test_patch.dart'), patchCode);

    _createSdk();

    Source source = file.createSource(FastUri.parse('dart:test'));
    CompilationUnit unit = SdkPatcher.parse(source, true, listener);
    patcher.patch(sdk, SdkLibraryImpl.VM_PLATFORM, listener, source, unit);
    return unit;
  }

  String _p(String path) => provider.convertPath(path);

  void _setSdkLibraries(String code) {
    provider.newFile(
        _p('/sdk/lib/_internal/sdk_library_metadata/lib/libraries.dart'), code);
  }

  static void _assertPrevNextToken(Token prev, Token next) {
    expect(prev.next, same(next));
    expect(next.previous, same(prev));
  }
}