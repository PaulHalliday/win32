// IModalWindow.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import
import 'dart:ffi';

import 'package:ffi/ffi.dart';

import 'package:win32/src/constants.dart';
import 'package:win32/src/exceptions.dart';
import 'package:win32/src/macros.dart';
import 'package:win32/src/structs.dart';
import 'package:win32/src/win32.dart';
import 'package:win32/src/com/combase.dart';

import 'package:win32/src/generated/IUnknown.dart';

const IID_IModalWindow = '{b4db1657-70d7-485e-8e3e-6fcb5a5c1802}';

typedef Show_Native = Int32 Function(Pointer obj, IntPtr hwndOwner);
typedef Show_Dart = int Function(Pointer obj, int hwndOwner);

class IModalWindow extends IUnknown {
  // vtable begins at 3, ends at 3

  @override
  Pointer<COMObject> ptr;

  IModalWindow(this.ptr) : super(ptr);

  int Show(int hwndOwner) => Pointer<NativeFunction<Show_Native>>.fromAddress(
          ptr.ref.vtable.elementAt(3).value)
      .asFunction<Show_Dart>()(ptr.ref.lpVtbl, hwndOwner);
}
