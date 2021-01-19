// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Tests that Win32 API prototypes can be successfully loaded (i.e. that
// lookupFunction works for all the APIs generated)

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

@TestOn('windows')

import 'package:ffi/ffi.dart';
import 'package:test/test.dart';

import 'package:win32/win32.dart';

void main() {
  final ptr = calloc<COMObject>();

  final dispatch = IDispatch(ptr);
  test('Can instantiate IDispatch.GetTypeInfoCount', () {
    expect(dispatch.GetTypeInfoCount, isA<Function>());
  });
  test('Can instantiate IDispatch.GetTypeInfo', () {
    expect(dispatch.GetTypeInfo, isA<Function>());
  });
  test('Can instantiate IDispatch.GetIDsOfNames', () {
    expect(dispatch.GetIDsOfNames, isA<Function>());
  });
  test('Can instantiate IDispatch.Invoke', () {
    expect(dispatch.Invoke, isA<Function>());
  });
  free(ptr);
}