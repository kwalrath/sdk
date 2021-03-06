// Copyright (c) 2013, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.
// VMOptions=--optimization-counter-threshold=10 --no-background-compilation

// Library tag to be able to run in html test framework.
library float32x4_shuffle_test;

import 'dart:typed_data';
import "package:expect/expect.dart";

void testShuffle00() {
  var m = new Float32x4(1.0, 2.0, 3.0, 4.0);
  var c;
  c = m.shuffle(Float32x4.XXXX);
  Expect.equals(1.0, c.x);
  Expect.equals(1.0, c.y);
  Expect.equals(1.0, c.z);
  Expect.equals(1.0, c.w);
  c = m.shuffle(Float32x4.XXXY);
  Expect.equals(1.0, c.x);
  Expect.equals(1.0, c.y);
  Expect.equals(1.0, c.z);
  Expect.equals(2.0, c.w);
  c = m.shuffle(Float32x4.XXXZ);
  Expect.equals(1.0, c.x);
  Expect.equals(1.0, c.y);
  Expect.equals(1.0, c.z);
  Expect.equals(3.0, c.w);
  c = m.shuffle(Float32x4.XXXW);
  Expect.equals(1.0, c.x);
  Expect.equals(1.0, c.y);
  Expect.equals(1.0, c.z);
  Expect.equals(4.0, c.w);
  c = m.shuffle(Float32x4.XXYX);
  Expect.equals(1.0, c.x);
  Expect.equals(1.0, c.y);
  Expect.equals(2.0, c.z);
  Expect.equals(1.0, c.w);
  c = m.shuffle(Float32x4.XXYY);
  Expect.equals(1.0, c.x);
  Expect.equals(1.0, c.y);
  Expect.equals(2.0, c.z);
  Expect.equals(2.0, c.w);
  c = m.shuffle(Float32x4.XXYZ);
  Expect.equals(1.0, c.x);
  Expect.equals(1.0, c.y);
  Expect.equals(2.0, c.z);
  Expect.equals(3.0, c.w);
  c = m.shuffle(Float32x4.XXYW);
  Expect.equals(1.0, c.x);
  Expect.equals(1.0, c.y);
  Expect.equals(2.0, c.z);
  Expect.equals(4.0, c.w);
  c = m.shuffle(Float32x4.XXZX);
  Expect.equals(1.0, c.x);
  Expect.equals(1.0, c.y);
  Expect.equals(3.0, c.z);
  Expect.equals(1.0, c.w);
  c = m.shuffle(Float32x4.XXZY);
  Expect.equals(1.0, c.x);
  Expect.equals(1.0, c.y);
  Expect.equals(3.0, c.z);
  Expect.equals(2.0, c.w);
  c = m.shuffle(Float32x4.XXZZ);
  Expect.equals(1.0, c.x);
  Expect.equals(1.0, c.y);
  Expect.equals(3.0, c.z);
  Expect.equals(3.0, c.w);
  c = m.shuffle(Float32x4.XXZW);
  Expect.equals(1.0, c.x);
  Expect.equals(1.0, c.y);
  Expect.equals(3.0, c.z);
  Expect.equals(4.0, c.w);
  c = m.shuffle(Float32x4.XXWX);
  Expect.equals(1.0, c.x);
  Expect.equals(1.0, c.y);
  Expect.equals(4.0, c.z);
  Expect.equals(1.0, c.w);
  c = m.shuffle(Float32x4.XXWY);
  Expect.equals(1.0, c.x);
  Expect.equals(1.0, c.y);
  Expect.equals(4.0, c.z);
  Expect.equals(2.0, c.w);
  c = m.shuffle(Float32x4.XXWZ);
  Expect.equals(1.0, c.x);
  Expect.equals(1.0, c.y);
  Expect.equals(4.0, c.z);
  Expect.equals(3.0, c.w);
  c = m.shuffle(Float32x4.XXWW);
  Expect.equals(1.0, c.x);
  Expect.equals(1.0, c.y);
  Expect.equals(4.0, c.z);
  Expect.equals(4.0, c.w);
}

void testShuffle01() {
  var m = new Float32x4(1.0, 2.0, 3.0, 4.0);
  var c;
  c = m.shuffle(Float32x4.XYXX);
  Expect.equals(1.0, c.x);
  Expect.equals(2.0, c.y);
  Expect.equals(1.0, c.z);
  Expect.equals(1.0, c.w);
  c = m.shuffle(Float32x4.XYXY);
  Expect.equals(1.0, c.x);
  Expect.equals(2.0, c.y);
  Expect.equals(1.0, c.z);
  Expect.equals(2.0, c.w);
  c = m.shuffle(Float32x4.XYXZ);
  Expect.equals(1.0, c.x);
  Expect.equals(2.0, c.y);
  Expect.equals(1.0, c.z);
  Expect.equals(3.0, c.w);
  c = m.shuffle(Float32x4.XYXW);
  Expect.equals(1.0, c.x);
  Expect.equals(2.0, c.y);
  Expect.equals(1.0, c.z);
  Expect.equals(4.0, c.w);
  c = m.shuffle(Float32x4.XYYX);
  Expect.equals(1.0, c.x);
  Expect.equals(2.0, c.y);
  Expect.equals(2.0, c.z);
  Expect.equals(1.0, c.w);
  c = m.shuffle(Float32x4.XYYY);
  Expect.equals(1.0, c.x);
  Expect.equals(2.0, c.y);
  Expect.equals(2.0, c.z);
  Expect.equals(2.0, c.w);
  c = m.shuffle(Float32x4.XYYZ);
  Expect.equals(1.0, c.x);
  Expect.equals(2.0, c.y);
  Expect.equals(2.0, c.z);
  Expect.equals(3.0, c.w);
  c = m.shuffle(Float32x4.XYYW);
  Expect.equals(1.0, c.x);
  Expect.equals(2.0, c.y);
  Expect.equals(2.0, c.z);
  Expect.equals(4.0, c.w);
  c = m.shuffle(Float32x4.XYZX);
  Expect.equals(1.0, c.x);
  Expect.equals(2.0, c.y);
  Expect.equals(3.0, c.z);
  Expect.equals(1.0, c.w);
  c = m.shuffle(Float32x4.XYZY);
  Expect.equals(1.0, c.x);
  Expect.equals(2.0, c.y);
  Expect.equals(3.0, c.z);
  Expect.equals(2.0, c.w);
  c = m.shuffle(Float32x4.XYZZ);
  Expect.equals(1.0, c.x);
  Expect.equals(2.0, c.y);
  Expect.equals(3.0, c.z);
  Expect.equals(3.0, c.w);
  c = m.shuffle(Float32x4.XYZW);
  Expect.equals(1.0, c.x);
  Expect.equals(2.0, c.y);
  Expect.equals(3.0, c.z);
  Expect.equals(4.0, c.w);
  c = m.shuffle(Float32x4.XYWX);
  Expect.equals(1.0, c.x);
  Expect.equals(2.0, c.y);
  Expect.equals(4.0, c.z);
  Expect.equals(1.0, c.w);
  c = m.shuffle(Float32x4.XYWY);
  Expect.equals(1.0, c.x);
  Expect.equals(2.0, c.y);
  Expect.equals(4.0, c.z);
  Expect.equals(2.0, c.w);
  c = m.shuffle(Float32x4.XYWZ);
  Expect.equals(1.0, c.x);
  Expect.equals(2.0, c.y);
  Expect.equals(4.0, c.z);
  Expect.equals(3.0, c.w);
  c = m.shuffle(Float32x4.XYWW);
  Expect.equals(1.0, c.x);
  Expect.equals(2.0, c.y);
  Expect.equals(4.0, c.z);
  Expect.equals(4.0, c.w);
}

void testShuffle02() {
  var m = new Float32x4(1.0, 2.0, 3.0, 4.0);
  var c;
  c = m.shuffle(Float32x4.XZXX);
  Expect.equals(1.0, c.x);
  Expect.equals(3.0, c.y);
  Expect.equals(1.0, c.z);
  Expect.equals(1.0, c.w);
  c = m.shuffle(Float32x4.XZXY);
  Expect.equals(1.0, c.x);
  Expect.equals(3.0, c.y);
  Expect.equals(1.0, c.z);
  Expect.equals(2.0, c.w);
  c = m.shuffle(Float32x4.XZXZ);
  Expect.equals(1.0, c.x);
  Expect.equals(3.0, c.y);
  Expect.equals(1.0, c.z);
  Expect.equals(3.0, c.w);
  c = m.shuffle(Float32x4.XZXW);
  Expect.equals(1.0, c.x);
  Expect.equals(3.0, c.y);
  Expect.equals(1.0, c.z);
  Expect.equals(4.0, c.w);
  c = m.shuffle(Float32x4.XZYX);
  Expect.equals(1.0, c.x);
  Expect.equals(3.0, c.y);
  Expect.equals(2.0, c.z);
  Expect.equals(1.0, c.w);
  c = m.shuffle(Float32x4.XZYY);
  Expect.equals(1.0, c.x);
  Expect.equals(3.0, c.y);
  Expect.equals(2.0, c.z);
  Expect.equals(2.0, c.w);
  c = m.shuffle(Float32x4.XZYZ);
  Expect.equals(1.0, c.x);
  Expect.equals(3.0, c.y);
  Expect.equals(2.0, c.z);
  Expect.equals(3.0, c.w);
  c = m.shuffle(Float32x4.XZYW);
  Expect.equals(1.0, c.x);
  Expect.equals(3.0, c.y);
  Expect.equals(2.0, c.z);
  Expect.equals(4.0, c.w);
  c = m.shuffle(Float32x4.XZZX);
  Expect.equals(1.0, c.x);
  Expect.equals(3.0, c.y);
  Expect.equals(3.0, c.z);
  Expect.equals(1.0, c.w);
  c = m.shuffle(Float32x4.XZZY);
  Expect.equals(1.0, c.x);
  Expect.equals(3.0, c.y);
  Expect.equals(3.0, c.z);
  Expect.equals(2.0, c.w);
  c = m.shuffle(Float32x4.XZZZ);
  Expect.equals(1.0, c.x);
  Expect.equals(3.0, c.y);
  Expect.equals(3.0, c.z);
  Expect.equals(3.0, c.w);
  c = m.shuffle(Float32x4.XZZW);
  Expect.equals(1.0, c.x);
  Expect.equals(3.0, c.y);
  Expect.equals(3.0, c.z);
  Expect.equals(4.0, c.w);
  c = m.shuffle(Float32x4.XZWX);
  Expect.equals(1.0, c.x);
  Expect.equals(3.0, c.y);
  Expect.equals(4.0, c.z);
  Expect.equals(1.0, c.w);
  c = m.shuffle(Float32x4.XZWY);
  Expect.equals(1.0, c.x);
  Expect.equals(3.0, c.y);
  Expect.equals(4.0, c.z);
  Expect.equals(2.0, c.w);
  c = m.shuffle(Float32x4.XZWZ);
  Expect.equals(1.0, c.x);
  Expect.equals(3.0, c.y);
  Expect.equals(4.0, c.z);
  Expect.equals(3.0, c.w);
  c = m.shuffle(Float32x4.XZWW);
  Expect.equals(1.0, c.x);
  Expect.equals(3.0, c.y);
  Expect.equals(4.0, c.z);
  Expect.equals(4.0, c.w);
}

void testShuffle03() {
  var m = new Float32x4(1.0, 2.0, 3.0, 4.0);
  var c;
  c = m.shuffle(Float32x4.XWXX);
  Expect.equals(1.0, c.x);
  Expect.equals(4.0, c.y);
  Expect.equals(1.0, c.z);
  Expect.equals(1.0, c.w);
  c = m.shuffle(Float32x4.XWXY);
  Expect.equals(1.0, c.x);
  Expect.equals(4.0, c.y);
  Expect.equals(1.0, c.z);
  Expect.equals(2.0, c.w);
  c = m.shuffle(Float32x4.XWXZ);
  Expect.equals(1.0, c.x);
  Expect.equals(4.0, c.y);
  Expect.equals(1.0, c.z);
  Expect.equals(3.0, c.w);
  c = m.shuffle(Float32x4.XWXW);
  Expect.equals(1.0, c.x);
  Expect.equals(4.0, c.y);
  Expect.equals(1.0, c.z);
  Expect.equals(4.0, c.w);
  c = m.shuffle(Float32x4.XWYX);
  Expect.equals(1.0, c.x);
  Expect.equals(4.0, c.y);
  Expect.equals(2.0, c.z);
  Expect.equals(1.0, c.w);
  c = m.shuffle(Float32x4.XWYY);
  Expect.equals(1.0, c.x);
  Expect.equals(4.0, c.y);
  Expect.equals(2.0, c.z);
  Expect.equals(2.0, c.w);
  c = m.shuffle(Float32x4.XWYZ);
  Expect.equals(1.0, c.x);
  Expect.equals(4.0, c.y);
  Expect.equals(2.0, c.z);
  Expect.equals(3.0, c.w);
  c = m.shuffle(Float32x4.XWYW);
  Expect.equals(1.0, c.x);
  Expect.equals(4.0, c.y);
  Expect.equals(2.0, c.z);
  Expect.equals(4.0, c.w);
  c = m.shuffle(Float32x4.XWZX);
  Expect.equals(1.0, c.x);
  Expect.equals(4.0, c.y);
  Expect.equals(3.0, c.z);
  Expect.equals(1.0, c.w);
  c = m.shuffle(Float32x4.XWZY);
  Expect.equals(1.0, c.x);
  Expect.equals(4.0, c.y);
  Expect.equals(3.0, c.z);
  Expect.equals(2.0, c.w);
  c = m.shuffle(Float32x4.XWZZ);
  Expect.equals(1.0, c.x);
  Expect.equals(4.0, c.y);
  Expect.equals(3.0, c.z);
  Expect.equals(3.0, c.w);
  c = m.shuffle(Float32x4.XWZW);
  Expect.equals(1.0, c.x);
  Expect.equals(4.0, c.y);
  Expect.equals(3.0, c.z);
  Expect.equals(4.0, c.w);
  c = m.shuffle(Float32x4.XWWX);
  Expect.equals(1.0, c.x);
  Expect.equals(4.0, c.y);
  Expect.equals(4.0, c.z);
  Expect.equals(1.0, c.w);
  c = m.shuffle(Float32x4.XWWY);
  Expect.equals(1.0, c.x);
  Expect.equals(4.0, c.y);
  Expect.equals(4.0, c.z);
  Expect.equals(2.0, c.w);
  c = m.shuffle(Float32x4.XWWZ);
  Expect.equals(1.0, c.x);
  Expect.equals(4.0, c.y);
  Expect.equals(4.0, c.z);
  Expect.equals(3.0, c.w);
  c = m.shuffle(Float32x4.XWWW);
  Expect.equals(1.0, c.x);
  Expect.equals(4.0, c.y);
  Expect.equals(4.0, c.z);
  Expect.equals(4.0, c.w);
}

void testShuffle10() {
  var m = new Float32x4(1.0, 2.0, 3.0, 4.0);
  var c;
  c = m.shuffle(Float32x4.YXXX);
  Expect.equals(2.0, c.x);
  Expect.equals(1.0, c.y);
  Expect.equals(1.0, c.z);
  Expect.equals(1.0, c.w);
  c = m.shuffle(Float32x4.YXXY);
  Expect.equals(2.0, c.x);
  Expect.equals(1.0, c.y);
  Expect.equals(1.0, c.z);
  Expect.equals(2.0, c.w);
  c = m.shuffle(Float32x4.YXXZ);
  Expect.equals(2.0, c.x);
  Expect.equals(1.0, c.y);
  Expect.equals(1.0, c.z);
  Expect.equals(3.0, c.w);
  c = m.shuffle(Float32x4.YXXW);
  Expect.equals(2.0, c.x);
  Expect.equals(1.0, c.y);
  Expect.equals(1.0, c.z);
  Expect.equals(4.0, c.w);
  c = m.shuffle(Float32x4.YXYX);
  Expect.equals(2.0, c.x);
  Expect.equals(1.0, c.y);
  Expect.equals(2.0, c.z);
  Expect.equals(1.0, c.w);
  c = m.shuffle(Float32x4.YXYY);
  Expect.equals(2.0, c.x);
  Expect.equals(1.0, c.y);
  Expect.equals(2.0, c.z);
  Expect.equals(2.0, c.w);
  c = m.shuffle(Float32x4.YXYZ);
  Expect.equals(2.0, c.x);
  Expect.equals(1.0, c.y);
  Expect.equals(2.0, c.z);
  Expect.equals(3.0, c.w);
  c = m.shuffle(Float32x4.YXYW);
  Expect.equals(2.0, c.x);
  Expect.equals(1.0, c.y);
  Expect.equals(2.0, c.z);
  Expect.equals(4.0, c.w);
  c = m.shuffle(Float32x4.YXZX);
  Expect.equals(2.0, c.x);
  Expect.equals(1.0, c.y);
  Expect.equals(3.0, c.z);
  Expect.equals(1.0, c.w);
  c = m.shuffle(Float32x4.YXZY);
  Expect.equals(2.0, c.x);
  Expect.equals(1.0, c.y);
  Expect.equals(3.0, c.z);
  Expect.equals(2.0, c.w);
  c = m.shuffle(Float32x4.YXZZ);
  Expect.equals(2.0, c.x);
  Expect.equals(1.0, c.y);
  Expect.equals(3.0, c.z);
  Expect.equals(3.0, c.w);
  c = m.shuffle(Float32x4.YXZW);
  Expect.equals(2.0, c.x);
  Expect.equals(1.0, c.y);
  Expect.equals(3.0, c.z);
  Expect.equals(4.0, c.w);
  c = m.shuffle(Float32x4.YXWX);
  Expect.equals(2.0, c.x);
  Expect.equals(1.0, c.y);
  Expect.equals(4.0, c.z);
  Expect.equals(1.0, c.w);
  c = m.shuffle(Float32x4.YXWY);
  Expect.equals(2.0, c.x);
  Expect.equals(1.0, c.y);
  Expect.equals(4.0, c.z);
  Expect.equals(2.0, c.w);
  c = m.shuffle(Float32x4.YXWZ);
  Expect.equals(2.0, c.x);
  Expect.equals(1.0, c.y);
  Expect.equals(4.0, c.z);
  Expect.equals(3.0, c.w);
  c = m.shuffle(Float32x4.YXWW);
  Expect.equals(2.0, c.x);
  Expect.equals(1.0, c.y);
  Expect.equals(4.0, c.z);
  Expect.equals(4.0, c.w);
}

void testShuffle11() {
  var m = new Float32x4(1.0, 2.0, 3.0, 4.0);
  var c;
  c = m.shuffle(Float32x4.YYXX);
  Expect.equals(2.0, c.x);
  Expect.equals(2.0, c.y);
  Expect.equals(1.0, c.z);
  Expect.equals(1.0, c.w);
  c = m.shuffle(Float32x4.YYXY);
  Expect.equals(2.0, c.x);
  Expect.equals(2.0, c.y);
  Expect.equals(1.0, c.z);
  Expect.equals(2.0, c.w);
  c = m.shuffle(Float32x4.YYXZ);
  Expect.equals(2.0, c.x);
  Expect.equals(2.0, c.y);
  Expect.equals(1.0, c.z);
  Expect.equals(3.0, c.w);
  c = m.shuffle(Float32x4.YYXW);
  Expect.equals(2.0, c.x);
  Expect.equals(2.0, c.y);
  Expect.equals(1.0, c.z);
  Expect.equals(4.0, c.w);
  c = m.shuffle(Float32x4.YYYX);
  Expect.equals(2.0, c.x);
  Expect.equals(2.0, c.y);
  Expect.equals(2.0, c.z);
  Expect.equals(1.0, c.w);
  c = m.shuffle(Float32x4.YYYY);
  Expect.equals(2.0, c.x);
  Expect.equals(2.0, c.y);
  Expect.equals(2.0, c.z);
  Expect.equals(2.0, c.w);
  c = m.shuffle(Float32x4.YYYZ);
  Expect.equals(2.0, c.x);
  Expect.equals(2.0, c.y);
  Expect.equals(2.0, c.z);
  Expect.equals(3.0, c.w);
  c = m.shuffle(Float32x4.YYYW);
  Expect.equals(2.0, c.x);
  Expect.equals(2.0, c.y);
  Expect.equals(2.0, c.z);
  Expect.equals(4.0, c.w);
  c = m.shuffle(Float32x4.YYZX);
  Expect.equals(2.0, c.x);
  Expect.equals(2.0, c.y);
  Expect.equals(3.0, c.z);
  Expect.equals(1.0, c.w);
  c = m.shuffle(Float32x4.YYZY);
  Expect.equals(2.0, c.x);
  Expect.equals(2.0, c.y);
  Expect.equals(3.0, c.z);
  Expect.equals(2.0, c.w);
  c = m.shuffle(Float32x4.YYZZ);
  Expect.equals(2.0, c.x);
  Expect.equals(2.0, c.y);
  Expect.equals(3.0, c.z);
  Expect.equals(3.0, c.w);
  c = m.shuffle(Float32x4.YYZW);
  Expect.equals(2.0, c.x);
  Expect.equals(2.0, c.y);
  Expect.equals(3.0, c.z);
  Expect.equals(4.0, c.w);
  c = m.shuffle(Float32x4.YYWX);
  Expect.equals(2.0, c.x);
  Expect.equals(2.0, c.y);
  Expect.equals(4.0, c.z);
  Expect.equals(1.0, c.w);
  c = m.shuffle(Float32x4.YYWY);
  Expect.equals(2.0, c.x);
  Expect.equals(2.0, c.y);
  Expect.equals(4.0, c.z);
  Expect.equals(2.0, c.w);
  c = m.shuffle(Float32x4.YYWZ);
  Expect.equals(2.0, c.x);
  Expect.equals(2.0, c.y);
  Expect.equals(4.0, c.z);
  Expect.equals(3.0, c.w);
  c = m.shuffle(Float32x4.YYWW);
  Expect.equals(2.0, c.x);
  Expect.equals(2.0, c.y);
  Expect.equals(4.0, c.z);
  Expect.equals(4.0, c.w);
}

void testShuffle12() {
  var m = new Float32x4(1.0, 2.0, 3.0, 4.0);
  var c;
  c = m.shuffle(Float32x4.YZXX);
  Expect.equals(2.0, c.x);
  Expect.equals(3.0, c.y);
  Expect.equals(1.0, c.z);
  Expect.equals(1.0, c.w);
  c = m.shuffle(Float32x4.YZXY);
  Expect.equals(2.0, c.x);
  Expect.equals(3.0, c.y);
  Expect.equals(1.0, c.z);
  Expect.equals(2.0, c.w);
  c = m.shuffle(Float32x4.YZXZ);
  Expect.equals(2.0, c.x);
  Expect.equals(3.0, c.y);
  Expect.equals(1.0, c.z);
  Expect.equals(3.0, c.w);
  c = m.shuffle(Float32x4.YZXW);
  Expect.equals(2.0, c.x);
  Expect.equals(3.0, c.y);
  Expect.equals(1.0, c.z);
  Expect.equals(4.0, c.w);
  c = m.shuffle(Float32x4.YZYX);
  Expect.equals(2.0, c.x);
  Expect.equals(3.0, c.y);
  Expect.equals(2.0, c.z);
  Expect.equals(1.0, c.w);
  c = m.shuffle(Float32x4.YZYY);
  Expect.equals(2.0, c.x);
  Expect.equals(3.0, c.y);
  Expect.equals(2.0, c.z);
  Expect.equals(2.0, c.w);
  c = m.shuffle(Float32x4.YZYZ);
  Expect.equals(2.0, c.x);
  Expect.equals(3.0, c.y);
  Expect.equals(2.0, c.z);
  Expect.equals(3.0, c.w);
  c = m.shuffle(Float32x4.YZYW);
  Expect.equals(2.0, c.x);
  Expect.equals(3.0, c.y);
  Expect.equals(2.0, c.z);
  Expect.equals(4.0, c.w);
  c = m.shuffle(Float32x4.YZZX);
  Expect.equals(2.0, c.x);
  Expect.equals(3.0, c.y);
  Expect.equals(3.0, c.z);
  Expect.equals(1.0, c.w);
  c = m.shuffle(Float32x4.YZZY);
  Expect.equals(2.0, c.x);
  Expect.equals(3.0, c.y);
  Expect.equals(3.0, c.z);
  Expect.equals(2.0, c.w);
  c = m.shuffle(Float32x4.YZZZ);
  Expect.equals(2.0, c.x);
  Expect.equals(3.0, c.y);
  Expect.equals(3.0, c.z);
  Expect.equals(3.0, c.w);
  c = m.shuffle(Float32x4.YZZW);
  Expect.equals(2.0, c.x);
  Expect.equals(3.0, c.y);
  Expect.equals(3.0, c.z);
  Expect.equals(4.0, c.w);
  c = m.shuffle(Float32x4.YZWX);
  Expect.equals(2.0, c.x);
  Expect.equals(3.0, c.y);
  Expect.equals(4.0, c.z);
  Expect.equals(1.0, c.w);
  c = m.shuffle(Float32x4.YZWY);
  Expect.equals(2.0, c.x);
  Expect.equals(3.0, c.y);
  Expect.equals(4.0, c.z);
  Expect.equals(2.0, c.w);
  c = m.shuffle(Float32x4.YZWZ);
  Expect.equals(2.0, c.x);
  Expect.equals(3.0, c.y);
  Expect.equals(4.0, c.z);
  Expect.equals(3.0, c.w);
  c = m.shuffle(Float32x4.YZWW);
  Expect.equals(2.0, c.x);
  Expect.equals(3.0, c.y);
  Expect.equals(4.0, c.z);
  Expect.equals(4.0, c.w);
}

void testShuffle13() {
  var m = new Float32x4(1.0, 2.0, 3.0, 4.0);
  var c;
  c = m.shuffle(Float32x4.YWXX);
  Expect.equals(2.0, c.x);
  Expect.equals(4.0, c.y);
  Expect.equals(1.0, c.z);
  Expect.equals(1.0, c.w);
  c = m.shuffle(Float32x4.YWXY);
  Expect.equals(2.0, c.x);
  Expect.equals(4.0, c.y);
  Expect.equals(1.0, c.z);
  Expect.equals(2.0, c.w);
  c = m.shuffle(Float32x4.YWXZ);
  Expect.equals(2.0, c.x);
  Expect.equals(4.0, c.y);
  Expect.equals(1.0, c.z);
  Expect.equals(3.0, c.w);
  c = m.shuffle(Float32x4.YWXW);
  Expect.equals(2.0, c.x);
  Expect.equals(4.0, c.y);
  Expect.equals(1.0, c.z);
  Expect.equals(4.0, c.w);
  c = m.shuffle(Float32x4.YWYX);
  Expect.equals(2.0, c.x);
  Expect.equals(4.0, c.y);
  Expect.equals(2.0, c.z);
  Expect.equals(1.0, c.w);
  c = m.shuffle(Float32x4.YWYY);
  Expect.equals(2.0, c.x);
  Expect.equals(4.0, c.y);
  Expect.equals(2.0, c.z);
  Expect.equals(2.0, c.w);
  c = m.shuffle(Float32x4.YWYZ);
  Expect.equals(2.0, c.x);
  Expect.equals(4.0, c.y);
  Expect.equals(2.0, c.z);
  Expect.equals(3.0, c.w);
  c = m.shuffle(Float32x4.YWYW);
  Expect.equals(2.0, c.x);
  Expect.equals(4.0, c.y);
  Expect.equals(2.0, c.z);
  Expect.equals(4.0, c.w);
  c = m.shuffle(Float32x4.YWZX);
  Expect.equals(2.0, c.x);
  Expect.equals(4.0, c.y);
  Expect.equals(3.0, c.z);
  Expect.equals(1.0, c.w);
  c = m.shuffle(Float32x4.YWZY);
  Expect.equals(2.0, c.x);
  Expect.equals(4.0, c.y);
  Expect.equals(3.0, c.z);
  Expect.equals(2.0, c.w);
  c = m.shuffle(Float32x4.YWZZ);
  Expect.equals(2.0, c.x);
  Expect.equals(4.0, c.y);
  Expect.equals(3.0, c.z);
  Expect.equals(3.0, c.w);
  c = m.shuffle(Float32x4.YWZW);
  Expect.equals(2.0, c.x);
  Expect.equals(4.0, c.y);
  Expect.equals(3.0, c.z);
  Expect.equals(4.0, c.w);
  c = m.shuffle(Float32x4.YWWX);
  Expect.equals(2.0, c.x);
  Expect.equals(4.0, c.y);
  Expect.equals(4.0, c.z);
  Expect.equals(1.0, c.w);
  c = m.shuffle(Float32x4.YWWY);
  Expect.equals(2.0, c.x);
  Expect.equals(4.0, c.y);
  Expect.equals(4.0, c.z);
  Expect.equals(2.0, c.w);
  c = m.shuffle(Float32x4.YWWZ);
  Expect.equals(2.0, c.x);
  Expect.equals(4.0, c.y);
  Expect.equals(4.0, c.z);
  Expect.equals(3.0, c.w);
  c = m.shuffle(Float32x4.YWWW);
  Expect.equals(2.0, c.x);
  Expect.equals(4.0, c.y);
  Expect.equals(4.0, c.z);
  Expect.equals(4.0, c.w);
}

void testShuffle20() {
  var m = new Float32x4(1.0, 2.0, 3.0, 4.0);
  var c;
  c = m.shuffle(Float32x4.ZXXX);
  Expect.equals(3.0, c.x);
  Expect.equals(1.0, c.y);
  Expect.equals(1.0, c.z);
  Expect.equals(1.0, c.w);
  c = m.shuffle(Float32x4.ZXXY);
  Expect.equals(3.0, c.x);
  Expect.equals(1.0, c.y);
  Expect.equals(1.0, c.z);
  Expect.equals(2.0, c.w);
  c = m.shuffle(Float32x4.ZXXZ);
  Expect.equals(3.0, c.x);
  Expect.equals(1.0, c.y);
  Expect.equals(1.0, c.z);
  Expect.equals(3.0, c.w);
  c = m.shuffle(Float32x4.ZXXW);
  Expect.equals(3.0, c.x);
  Expect.equals(1.0, c.y);
  Expect.equals(1.0, c.z);
  Expect.equals(4.0, c.w);
  c = m.shuffle(Float32x4.ZXYX);
  Expect.equals(3.0, c.x);
  Expect.equals(1.0, c.y);
  Expect.equals(2.0, c.z);
  Expect.equals(1.0, c.w);
  c = m.shuffle(Float32x4.ZXYY);
  Expect.equals(3.0, c.x);
  Expect.equals(1.0, c.y);
  Expect.equals(2.0, c.z);
  Expect.equals(2.0, c.w);
  c = m.shuffle(Float32x4.ZXYZ);
  Expect.equals(3.0, c.x);
  Expect.equals(1.0, c.y);
  Expect.equals(2.0, c.z);
  Expect.equals(3.0, c.w);
  c = m.shuffle(Float32x4.ZXYW);
  Expect.equals(3.0, c.x);
  Expect.equals(1.0, c.y);
  Expect.equals(2.0, c.z);
  Expect.equals(4.0, c.w);
  c = m.shuffle(Float32x4.ZXZX);
  Expect.equals(3.0, c.x);
  Expect.equals(1.0, c.y);
  Expect.equals(3.0, c.z);
  Expect.equals(1.0, c.w);
  c = m.shuffle(Float32x4.ZXZY);
  Expect.equals(3.0, c.x);
  Expect.equals(1.0, c.y);
  Expect.equals(3.0, c.z);
  Expect.equals(2.0, c.w);
  c = m.shuffle(Float32x4.ZXZZ);
  Expect.equals(3.0, c.x);
  Expect.equals(1.0, c.y);
  Expect.equals(3.0, c.z);
  Expect.equals(3.0, c.w);
  c = m.shuffle(Float32x4.ZXZW);
  Expect.equals(3.0, c.x);
  Expect.equals(1.0, c.y);
  Expect.equals(3.0, c.z);
  Expect.equals(4.0, c.w);
  c = m.shuffle(Float32x4.ZXWX);
  Expect.equals(3.0, c.x);
  Expect.equals(1.0, c.y);
  Expect.equals(4.0, c.z);
  Expect.equals(1.0, c.w);
  c = m.shuffle(Float32x4.ZXWY);
  Expect.equals(3.0, c.x);
  Expect.equals(1.0, c.y);
  Expect.equals(4.0, c.z);
  Expect.equals(2.0, c.w);
  c = m.shuffle(Float32x4.ZXWZ);
  Expect.equals(3.0, c.x);
  Expect.equals(1.0, c.y);
  Expect.equals(4.0, c.z);
  Expect.equals(3.0, c.w);
  c = m.shuffle(Float32x4.ZXWW);
  Expect.equals(3.0, c.x);
  Expect.equals(1.0, c.y);
  Expect.equals(4.0, c.z);
  Expect.equals(4.0, c.w);
}

void testShuffle21() {
  var m = new Float32x4(1.0, 2.0, 3.0, 4.0);
  var c;
  c = m.shuffle(Float32x4.ZYXX);
  Expect.equals(3.0, c.x);
  Expect.equals(2.0, c.y);
  Expect.equals(1.0, c.z);
  Expect.equals(1.0, c.w);
  c = m.shuffle(Float32x4.ZYXY);
  Expect.equals(3.0, c.x);
  Expect.equals(2.0, c.y);
  Expect.equals(1.0, c.z);
  Expect.equals(2.0, c.w);
  c = m.shuffle(Float32x4.ZYXZ);
  Expect.equals(3.0, c.x);
  Expect.equals(2.0, c.y);
  Expect.equals(1.0, c.z);
  Expect.equals(3.0, c.w);
  c = m.shuffle(Float32x4.ZYXW);
  Expect.equals(3.0, c.x);
  Expect.equals(2.0, c.y);
  Expect.equals(1.0, c.z);
  Expect.equals(4.0, c.w);
  c = m.shuffle(Float32x4.ZYYX);
  Expect.equals(3.0, c.x);
  Expect.equals(2.0, c.y);
  Expect.equals(2.0, c.z);
  Expect.equals(1.0, c.w);
  c = m.shuffle(Float32x4.ZYYY);
  Expect.equals(3.0, c.x);
  Expect.equals(2.0, c.y);
  Expect.equals(2.0, c.z);
  Expect.equals(2.0, c.w);
  c = m.shuffle(Float32x4.ZYYZ);
  Expect.equals(3.0, c.x);
  Expect.equals(2.0, c.y);
  Expect.equals(2.0, c.z);
  Expect.equals(3.0, c.w);
  c = m.shuffle(Float32x4.ZYYW);
  Expect.equals(3.0, c.x);
  Expect.equals(2.0, c.y);
  Expect.equals(2.0, c.z);
  Expect.equals(4.0, c.w);
  c = m.shuffle(Float32x4.ZYZX);
  Expect.equals(3.0, c.x);
  Expect.equals(2.0, c.y);
  Expect.equals(3.0, c.z);
  Expect.equals(1.0, c.w);
  c = m.shuffle(Float32x4.ZYZY);
  Expect.equals(3.0, c.x);
  Expect.equals(2.0, c.y);
  Expect.equals(3.0, c.z);
  Expect.equals(2.0, c.w);
  c = m.shuffle(Float32x4.ZYZZ);
  Expect.equals(3.0, c.x);
  Expect.equals(2.0, c.y);
  Expect.equals(3.0, c.z);
  Expect.equals(3.0, c.w);
  c = m.shuffle(Float32x4.ZYZW);
  Expect.equals(3.0, c.x);
  Expect.equals(2.0, c.y);
  Expect.equals(3.0, c.z);
  Expect.equals(4.0, c.w);
  c = m.shuffle(Float32x4.ZYWX);
  Expect.equals(3.0, c.x);
  Expect.equals(2.0, c.y);
  Expect.equals(4.0, c.z);
  Expect.equals(1.0, c.w);
  c = m.shuffle(Float32x4.ZYWY);
  Expect.equals(3.0, c.x);
  Expect.equals(2.0, c.y);
  Expect.equals(4.0, c.z);
  Expect.equals(2.0, c.w);
  c = m.shuffle(Float32x4.ZYWZ);
  Expect.equals(3.0, c.x);
  Expect.equals(2.0, c.y);
  Expect.equals(4.0, c.z);
  Expect.equals(3.0, c.w);
  c = m.shuffle(Float32x4.ZYWW);
  Expect.equals(3.0, c.x);
  Expect.equals(2.0, c.y);
  Expect.equals(4.0, c.z);
  Expect.equals(4.0, c.w);
}

void testShuffle22() {
  var m = new Float32x4(1.0, 2.0, 3.0, 4.0);
  var c;
  c = m.shuffle(Float32x4.ZZXX);
  Expect.equals(3.0, c.x);
  Expect.equals(3.0, c.y);
  Expect.equals(1.0, c.z);
  Expect.equals(1.0, c.w);
  c = m.shuffle(Float32x4.ZZXY);
  Expect.equals(3.0, c.x);
  Expect.equals(3.0, c.y);
  Expect.equals(1.0, c.z);
  Expect.equals(2.0, c.w);
  c = m.shuffle(Float32x4.ZZXZ);
  Expect.equals(3.0, c.x);
  Expect.equals(3.0, c.y);
  Expect.equals(1.0, c.z);
  Expect.equals(3.0, c.w);
  c = m.shuffle(Float32x4.ZZXW);
  Expect.equals(3.0, c.x);
  Expect.equals(3.0, c.y);
  Expect.equals(1.0, c.z);
  Expect.equals(4.0, c.w);
  c = m.shuffle(Float32x4.ZZYX);
  Expect.equals(3.0, c.x);
  Expect.equals(3.0, c.y);
  Expect.equals(2.0, c.z);
  Expect.equals(1.0, c.w);
  c = m.shuffle(Float32x4.ZZYY);
  Expect.equals(3.0, c.x);
  Expect.equals(3.0, c.y);
  Expect.equals(2.0, c.z);
  Expect.equals(2.0, c.w);
  c = m.shuffle(Float32x4.ZZYZ);
  Expect.equals(3.0, c.x);
  Expect.equals(3.0, c.y);
  Expect.equals(2.0, c.z);
  Expect.equals(3.0, c.w);
  c = m.shuffle(Float32x4.ZZYW);
  Expect.equals(3.0, c.x);
  Expect.equals(3.0, c.y);
  Expect.equals(2.0, c.z);
  Expect.equals(4.0, c.w);
  c = m.shuffle(Float32x4.ZZZX);
  Expect.equals(3.0, c.x);
  Expect.equals(3.0, c.y);
  Expect.equals(3.0, c.z);
  Expect.equals(1.0, c.w);
  c = m.shuffle(Float32x4.ZZZY);
  Expect.equals(3.0, c.x);
  Expect.equals(3.0, c.y);
  Expect.equals(3.0, c.z);
  Expect.equals(2.0, c.w);
  c = m.shuffle(Float32x4.ZZZZ);
  Expect.equals(3.0, c.x);
  Expect.equals(3.0, c.y);
  Expect.equals(3.0, c.z);
  Expect.equals(3.0, c.w);
  c = m.shuffle(Float32x4.ZZZW);
  Expect.equals(3.0, c.x);
  Expect.equals(3.0, c.y);
  Expect.equals(3.0, c.z);
  Expect.equals(4.0, c.w);
  c = m.shuffle(Float32x4.ZZWX);
  Expect.equals(3.0, c.x);
  Expect.equals(3.0, c.y);
  Expect.equals(4.0, c.z);
  Expect.equals(1.0, c.w);
  c = m.shuffle(Float32x4.ZZWY);
  Expect.equals(3.0, c.x);
  Expect.equals(3.0, c.y);
  Expect.equals(4.0, c.z);
  Expect.equals(2.0, c.w);
  c = m.shuffle(Float32x4.ZZWZ);
  Expect.equals(3.0, c.x);
  Expect.equals(3.0, c.y);
  Expect.equals(4.0, c.z);
  Expect.equals(3.0, c.w);
  c = m.shuffle(Float32x4.ZZWW);
  Expect.equals(3.0, c.x);
  Expect.equals(3.0, c.y);
  Expect.equals(4.0, c.z);
  Expect.equals(4.0, c.w);
}

void testShuffle23() {
  var m = new Float32x4(1.0, 2.0, 3.0, 4.0);
  var c;
  c = m.shuffle(Float32x4.ZWXX);
  Expect.equals(3.0, c.x);
  Expect.equals(4.0, c.y);
  Expect.equals(1.0, c.z);
  Expect.equals(1.0, c.w);
  c = m.shuffle(Float32x4.ZWXY);
  Expect.equals(3.0, c.x);
  Expect.equals(4.0, c.y);
  Expect.equals(1.0, c.z);
  Expect.equals(2.0, c.w);
  c = m.shuffle(Float32x4.ZWXZ);
  Expect.equals(3.0, c.x);
  Expect.equals(4.0, c.y);
  Expect.equals(1.0, c.z);
  Expect.equals(3.0, c.w);
  c = m.shuffle(Float32x4.ZWXW);
  Expect.equals(3.0, c.x);
  Expect.equals(4.0, c.y);
  Expect.equals(1.0, c.z);
  Expect.equals(4.0, c.w);
  c = m.shuffle(Float32x4.ZWYX);
  Expect.equals(3.0, c.x);
  Expect.equals(4.0, c.y);
  Expect.equals(2.0, c.z);
  Expect.equals(1.0, c.w);
  c = m.shuffle(Float32x4.ZWYY);
  Expect.equals(3.0, c.x);
  Expect.equals(4.0, c.y);
  Expect.equals(2.0, c.z);
  Expect.equals(2.0, c.w);
  c = m.shuffle(Float32x4.ZWYZ);
  Expect.equals(3.0, c.x);
  Expect.equals(4.0, c.y);
  Expect.equals(2.0, c.z);
  Expect.equals(3.0, c.w);
  c = m.shuffle(Float32x4.ZWYW);
  Expect.equals(3.0, c.x);
  Expect.equals(4.0, c.y);
  Expect.equals(2.0, c.z);
  Expect.equals(4.0, c.w);
  c = m.shuffle(Float32x4.ZWZX);
  Expect.equals(3.0, c.x);
  Expect.equals(4.0, c.y);
  Expect.equals(3.0, c.z);
  Expect.equals(1.0, c.w);
  c = m.shuffle(Float32x4.ZWZY);
  Expect.equals(3.0, c.x);
  Expect.equals(4.0, c.y);
  Expect.equals(3.0, c.z);
  Expect.equals(2.0, c.w);
  c = m.shuffle(Float32x4.ZWZZ);
  Expect.equals(3.0, c.x);
  Expect.equals(4.0, c.y);
  Expect.equals(3.0, c.z);
  Expect.equals(3.0, c.w);
  c = m.shuffle(Float32x4.ZWZW);
  Expect.equals(3.0, c.x);
  Expect.equals(4.0, c.y);
  Expect.equals(3.0, c.z);
  Expect.equals(4.0, c.w);
  c = m.shuffle(Float32x4.ZWWX);
  Expect.equals(3.0, c.x);
  Expect.equals(4.0, c.y);
  Expect.equals(4.0, c.z);
  Expect.equals(1.0, c.w);
  c = m.shuffle(Float32x4.ZWWY);
  Expect.equals(3.0, c.x);
  Expect.equals(4.0, c.y);
  Expect.equals(4.0, c.z);
  Expect.equals(2.0, c.w);
  c = m.shuffle(Float32x4.ZWWZ);
  Expect.equals(3.0, c.x);
  Expect.equals(4.0, c.y);
  Expect.equals(4.0, c.z);
  Expect.equals(3.0, c.w);
  c = m.shuffle(Float32x4.ZWWW);
  Expect.equals(3.0, c.x);
  Expect.equals(4.0, c.y);
  Expect.equals(4.0, c.z);
  Expect.equals(4.0, c.w);
}

void testShuffle30() {
  var m = new Float32x4(1.0, 2.0, 3.0, 4.0);
  var c;
  c = m.shuffle(Float32x4.WXXX);
  Expect.equals(4.0, c.x);
  Expect.equals(1.0, c.y);
  Expect.equals(1.0, c.z);
  Expect.equals(1.0, c.w);
  c = m.shuffle(Float32x4.WXXY);
  Expect.equals(4.0, c.x);
  Expect.equals(1.0, c.y);
  Expect.equals(1.0, c.z);
  Expect.equals(2.0, c.w);
  c = m.shuffle(Float32x4.WXXZ);
  Expect.equals(4.0, c.x);
  Expect.equals(1.0, c.y);
  Expect.equals(1.0, c.z);
  Expect.equals(3.0, c.w);
  c = m.shuffle(Float32x4.WXXW);
  Expect.equals(4.0, c.x);
  Expect.equals(1.0, c.y);
  Expect.equals(1.0, c.z);
  Expect.equals(4.0, c.w);
  c = m.shuffle(Float32x4.WXYX);
  Expect.equals(4.0, c.x);
  Expect.equals(1.0, c.y);
  Expect.equals(2.0, c.z);
  Expect.equals(1.0, c.w);
  c = m.shuffle(Float32x4.WXYY);
  Expect.equals(4.0, c.x);
  Expect.equals(1.0, c.y);
  Expect.equals(2.0, c.z);
  Expect.equals(2.0, c.w);
  c = m.shuffle(Float32x4.WXYZ);
  Expect.equals(4.0, c.x);
  Expect.equals(1.0, c.y);
  Expect.equals(2.0, c.z);
  Expect.equals(3.0, c.w);
  c = m.shuffle(Float32x4.WXYW);
  Expect.equals(4.0, c.x);
  Expect.equals(1.0, c.y);
  Expect.equals(2.0, c.z);
  Expect.equals(4.0, c.w);
  c = m.shuffle(Float32x4.WXZX);
  Expect.equals(4.0, c.x);
  Expect.equals(1.0, c.y);
  Expect.equals(3.0, c.z);
  Expect.equals(1.0, c.w);
  c = m.shuffle(Float32x4.WXZY);
  Expect.equals(4.0, c.x);
  Expect.equals(1.0, c.y);
  Expect.equals(3.0, c.z);
  Expect.equals(2.0, c.w);
  c = m.shuffle(Float32x4.WXZZ);
  Expect.equals(4.0, c.x);
  Expect.equals(1.0, c.y);
  Expect.equals(3.0, c.z);
  Expect.equals(3.0, c.w);
  c = m.shuffle(Float32x4.WXZW);
  Expect.equals(4.0, c.x);
  Expect.equals(1.0, c.y);
  Expect.equals(3.0, c.z);
  Expect.equals(4.0, c.w);
  c = m.shuffle(Float32x4.WXWX);
  Expect.equals(4.0, c.x);
  Expect.equals(1.0, c.y);
  Expect.equals(4.0, c.z);
  Expect.equals(1.0, c.w);
  c = m.shuffle(Float32x4.WXWY);
  Expect.equals(4.0, c.x);
  Expect.equals(1.0, c.y);
  Expect.equals(4.0, c.z);
  Expect.equals(2.0, c.w);
  c = m.shuffle(Float32x4.WXWZ);
  Expect.equals(4.0, c.x);
  Expect.equals(1.0, c.y);
  Expect.equals(4.0, c.z);
  Expect.equals(3.0, c.w);
  c = m.shuffle(Float32x4.WXWW);
  Expect.equals(4.0, c.x);
  Expect.equals(1.0, c.y);
  Expect.equals(4.0, c.z);
  Expect.equals(4.0, c.w);
}

void testShuffle31() {
  var m = new Float32x4(1.0, 2.0, 3.0, 4.0);
  var c;
  c = m.shuffle(Float32x4.WYXX);
  Expect.equals(4.0, c.x);
  Expect.equals(2.0, c.y);
  Expect.equals(1.0, c.z);
  Expect.equals(1.0, c.w);
  c = m.shuffle(Float32x4.WYXY);
  Expect.equals(4.0, c.x);
  Expect.equals(2.0, c.y);
  Expect.equals(1.0, c.z);
  Expect.equals(2.0, c.w);
  c = m.shuffle(Float32x4.WYXZ);
  Expect.equals(4.0, c.x);
  Expect.equals(2.0, c.y);
  Expect.equals(1.0, c.z);
  Expect.equals(3.0, c.w);
  c = m.shuffle(Float32x4.WYXW);
  Expect.equals(4.0, c.x);
  Expect.equals(2.0, c.y);
  Expect.equals(1.0, c.z);
  Expect.equals(4.0, c.w);
  c = m.shuffle(Float32x4.WYYX);
  Expect.equals(4.0, c.x);
  Expect.equals(2.0, c.y);
  Expect.equals(2.0, c.z);
  Expect.equals(1.0, c.w);
  c = m.shuffle(Float32x4.WYYY);
  Expect.equals(4.0, c.x);
  Expect.equals(2.0, c.y);
  Expect.equals(2.0, c.z);
  Expect.equals(2.0, c.w);
  c = m.shuffle(Float32x4.WYYZ);
  Expect.equals(4.0, c.x);
  Expect.equals(2.0, c.y);
  Expect.equals(2.0, c.z);
  Expect.equals(3.0, c.w);
  c = m.shuffle(Float32x4.WYYW);
  Expect.equals(4.0, c.x);
  Expect.equals(2.0, c.y);
  Expect.equals(2.0, c.z);
  Expect.equals(4.0, c.w);
  c = m.shuffle(Float32x4.WYZX);
  Expect.equals(4.0, c.x);
  Expect.equals(2.0, c.y);
  Expect.equals(3.0, c.z);
  Expect.equals(1.0, c.w);
  c = m.shuffle(Float32x4.WYZY);
  Expect.equals(4.0, c.x);
  Expect.equals(2.0, c.y);
  Expect.equals(3.0, c.z);
  Expect.equals(2.0, c.w);
  c = m.shuffle(Float32x4.WYZZ);
  Expect.equals(4.0, c.x);
  Expect.equals(2.0, c.y);
  Expect.equals(3.0, c.z);
  Expect.equals(3.0, c.w);
  c = m.shuffle(Float32x4.WYZW);
  Expect.equals(4.0, c.x);
  Expect.equals(2.0, c.y);
  Expect.equals(3.0, c.z);
  Expect.equals(4.0, c.w);
  c = m.shuffle(Float32x4.WYWX);
  Expect.equals(4.0, c.x);
  Expect.equals(2.0, c.y);
  Expect.equals(4.0, c.z);
  Expect.equals(1.0, c.w);
  c = m.shuffle(Float32x4.WYWY);
  Expect.equals(4.0, c.x);
  Expect.equals(2.0, c.y);
  Expect.equals(4.0, c.z);
  Expect.equals(2.0, c.w);
  c = m.shuffle(Float32x4.WYWZ);
  Expect.equals(4.0, c.x);
  Expect.equals(2.0, c.y);
  Expect.equals(4.0, c.z);
  Expect.equals(3.0, c.w);
  c = m.shuffle(Float32x4.WYWW);
  Expect.equals(4.0, c.x);
  Expect.equals(2.0, c.y);
  Expect.equals(4.0, c.z);
  Expect.equals(4.0, c.w);
}

void testShuffle32() {
  var m = new Float32x4(1.0, 2.0, 3.0, 4.0);
  var c;
  c = m.shuffle(Float32x4.WZXX);
  Expect.equals(4.0, c.x);
  Expect.equals(3.0, c.y);
  Expect.equals(1.0, c.z);
  Expect.equals(1.0, c.w);
  c = m.shuffle(Float32x4.WZXY);
  Expect.equals(4.0, c.x);
  Expect.equals(3.0, c.y);
  Expect.equals(1.0, c.z);
  Expect.equals(2.0, c.w);
  c = m.shuffle(Float32x4.WZXZ);
  Expect.equals(4.0, c.x);
  Expect.equals(3.0, c.y);
  Expect.equals(1.0, c.z);
  Expect.equals(3.0, c.w);
  c = m.shuffle(Float32x4.WZXW);
  Expect.equals(4.0, c.x);
  Expect.equals(3.0, c.y);
  Expect.equals(1.0, c.z);
  Expect.equals(4.0, c.w);
  c = m.shuffle(Float32x4.WZYX);
  Expect.equals(4.0, c.x);
  Expect.equals(3.0, c.y);
  Expect.equals(2.0, c.z);
  Expect.equals(1.0, c.w);
  c = m.shuffle(Float32x4.WZYY);
  Expect.equals(4.0, c.x);
  Expect.equals(3.0, c.y);
  Expect.equals(2.0, c.z);
  Expect.equals(2.0, c.w);
  c = m.shuffle(Float32x4.WZYZ);
  Expect.equals(4.0, c.x);
  Expect.equals(3.0, c.y);
  Expect.equals(2.0, c.z);
  Expect.equals(3.0, c.w);
  c = m.shuffle(Float32x4.WZYW);
  Expect.equals(4.0, c.x);
  Expect.equals(3.0, c.y);
  Expect.equals(2.0, c.z);
  Expect.equals(4.0, c.w);
  c = m.shuffle(Float32x4.WZZX);
  Expect.equals(4.0, c.x);
  Expect.equals(3.0, c.y);
  Expect.equals(3.0, c.z);
  Expect.equals(1.0, c.w);
  c = m.shuffle(Float32x4.WZZY);
  Expect.equals(4.0, c.x);
  Expect.equals(3.0, c.y);
  Expect.equals(3.0, c.z);
  Expect.equals(2.0, c.w);
  c = m.shuffle(Float32x4.WZZZ);
  Expect.equals(4.0, c.x);
  Expect.equals(3.0, c.y);
  Expect.equals(3.0, c.z);
  Expect.equals(3.0, c.w);
  c = m.shuffle(Float32x4.WZZW);
  Expect.equals(4.0, c.x);
  Expect.equals(3.0, c.y);
  Expect.equals(3.0, c.z);
  Expect.equals(4.0, c.w);
  c = m.shuffle(Float32x4.WZWX);
  Expect.equals(4.0, c.x);
  Expect.equals(3.0, c.y);
  Expect.equals(4.0, c.z);
  Expect.equals(1.0, c.w);
  c = m.shuffle(Float32x4.WZWY);
  Expect.equals(4.0, c.x);
  Expect.equals(3.0, c.y);
  Expect.equals(4.0, c.z);
  Expect.equals(2.0, c.w);
  c = m.shuffle(Float32x4.WZWZ);
  Expect.equals(4.0, c.x);
  Expect.equals(3.0, c.y);
  Expect.equals(4.0, c.z);
  Expect.equals(3.0, c.w);
  c = m.shuffle(Float32x4.WZWW);
  Expect.equals(4.0, c.x);
  Expect.equals(3.0, c.y);
  Expect.equals(4.0, c.z);
  Expect.equals(4.0, c.w);
}

void testShuffle33() {
  var m = new Float32x4(1.0, 2.0, 3.0, 4.0);
  var c;
  c = m.shuffle(Float32x4.WWXX);
  Expect.equals(4.0, c.x);
  Expect.equals(4.0, c.y);
  Expect.equals(1.0, c.z);
  Expect.equals(1.0, c.w);
  c = m.shuffle(Float32x4.WWXY);
  Expect.equals(4.0, c.x);
  Expect.equals(4.0, c.y);
  Expect.equals(1.0, c.z);
  Expect.equals(2.0, c.w);
  c = m.shuffle(Float32x4.WWXZ);
  Expect.equals(4.0, c.x);
  Expect.equals(4.0, c.y);
  Expect.equals(1.0, c.z);
  Expect.equals(3.0, c.w);
  c = m.shuffle(Float32x4.WWXW);
  Expect.equals(4.0, c.x);
  Expect.equals(4.0, c.y);
  Expect.equals(1.0, c.z);
  Expect.equals(4.0, c.w);
  c = m.shuffle(Float32x4.WWYX);
  Expect.equals(4.0, c.x);
  Expect.equals(4.0, c.y);
  Expect.equals(2.0, c.z);
  Expect.equals(1.0, c.w);
  c = m.shuffle(Float32x4.WWYY);
  Expect.equals(4.0, c.x);
  Expect.equals(4.0, c.y);
  Expect.equals(2.0, c.z);
  Expect.equals(2.0, c.w);
  c = m.shuffle(Float32x4.WWYZ);
  Expect.equals(4.0, c.x);
  Expect.equals(4.0, c.y);
  Expect.equals(2.0, c.z);
  Expect.equals(3.0, c.w);
  c = m.shuffle(Float32x4.WWYW);
  Expect.equals(4.0, c.x);
  Expect.equals(4.0, c.y);
  Expect.equals(2.0, c.z);
  Expect.equals(4.0, c.w);
  c = m.shuffle(Float32x4.WWZX);
  Expect.equals(4.0, c.x);
  Expect.equals(4.0, c.y);
  Expect.equals(3.0, c.z);
  Expect.equals(1.0, c.w);
  c = m.shuffle(Float32x4.WWZY);
  Expect.equals(4.0, c.x);
  Expect.equals(4.0, c.y);
  Expect.equals(3.0, c.z);
  Expect.equals(2.0, c.w);
  c = m.shuffle(Float32x4.WWZZ);
  Expect.equals(4.0, c.x);
  Expect.equals(4.0, c.y);
  Expect.equals(3.0, c.z);
  Expect.equals(3.0, c.w);
  c = m.shuffle(Float32x4.WWZW);
  Expect.equals(4.0, c.x);
  Expect.equals(4.0, c.y);
  Expect.equals(3.0, c.z);
  Expect.equals(4.0, c.w);
  c = m.shuffle(Float32x4.WWWX);
  Expect.equals(4.0, c.x);
  Expect.equals(4.0, c.y);
  Expect.equals(4.0, c.z);
  Expect.equals(1.0, c.w);
  c = m.shuffle(Float32x4.WWWY);
  Expect.equals(4.0, c.x);
  Expect.equals(4.0, c.y);
  Expect.equals(4.0, c.z);
  Expect.equals(2.0, c.w);
  c = m.shuffle(Float32x4.WWWZ);
  Expect.equals(4.0, c.x);
  Expect.equals(4.0, c.y);
  Expect.equals(4.0, c.z);
  Expect.equals(3.0, c.w);
  c = m.shuffle(Float32x4.WWWW);
  Expect.equals(4.0, c.x);
  Expect.equals(4.0, c.y);
  Expect.equals(4.0, c.z);
  Expect.equals(4.0, c.w);
}

void testShuffleNonConstant(mask) {
  var m = new Float32x4(1.0, 2.0, 3.0, 4.0);
  var c;
  c = m.shuffle(mask);
  if (mask == 1) {
    Expect.equals(2.0, c.x);
    Expect.equals(1.0, c.y);
    Expect.equals(1.0, c.z);
    Expect.equals(1.0, c.w);
  } else {
    Expect.equals(Float32x4.YYYY + 1, mask);
    Expect.equals(3.0, c.x);
    Expect.equals(2.0, c.y);
    Expect.equals(2.0, c.z);
    Expect.equals(2.0, c.w);
  }
}

void testInvalidShuffle(mask) {
  // Not a valid mask.
  Expect.isFalse(mask <= 255 && mask >= 0);
  var m = new Float32x4(1.0, 2.0, 3.0, 4.0);
  var c;
  Expect.throws(() {
    c = m.shuffle(mask);
  });
}

void testShuffle() {
  var m = new Float32x4(1.0, 2.0, 3.0, 4.0);
  var c;
  c = m.shuffle(Float32x4.WZYX);
  Expect.equals(4.0, c.x);
  Expect.equals(3.0, c.y);
  Expect.equals(2.0, c.z);
  Expect.equals(1.0, c.w);
}

main() {
  var xxxx = Float32x4.XXXX + 1;
  var yyyy = Float32x4.YYYY + 1;
  for (int i = 0; i < 20; i++) {
    testShuffle();
    testShuffle00();
    testShuffle01();
    testShuffle02();
    testShuffle03();
    testShuffle10();
    testShuffle11();
    testShuffle12();
    testShuffle13();
    testShuffle20();
    testShuffle21();
    testShuffle22();
    testShuffle23();
    testShuffle30();
    testShuffle31();
    testShuffle32();
    testShuffle33();
    testShuffleNonConstant(xxxx);
    testShuffleNonConstant(yyyy);
    testInvalidShuffle(256);
    testInvalidShuffle(-1);
  }
}
