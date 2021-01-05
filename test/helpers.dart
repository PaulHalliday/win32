import 'dart:ffi';
import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

Object getRegistryValue(int key, String subKey, String valueName) {
  late Object dataValue;

  final subKeyPtr = TEXT(subKey);
  final valueNamePtr = TEXT(valueName);
  final openKeyPtr = allocate<IntPtr>();
  final dataType = allocate<Uint32>();

  // 256 bytes is more than enough, and Windows will throw ERROR_MORE_DATA if
  // not, so there won't be an overrun.
  final data = allocate<Uint8>(count: 256);
  final dataSize = allocate<Uint32>()..value = 256;

  try {
    var result = RegOpenKeyEx(key, subKeyPtr, 0, KEY_READ, openKeyPtr);
    if (result == ERROR_SUCCESS) {
      result = RegQueryValueEx(openKeyPtr.value, valueNamePtr, nullptr,
          dataType, data.cast(), dataSize);

      if (result == ERROR_SUCCESS) {
        if (dataType.value == REG_DWORD) {
          dataValue = data.value;
        } else if (dataType.value == REG_SZ) {
          dataValue = data.cast<Utf16>().unpackString(dataSize.value);
        } else {
          // other data types are available, but this is a sample
        }
      } else {
        throw WindowsException(HRESULT_FROM_WIN32(result));
      }
    } else {
      throw WindowsException(HRESULT_FROM_WIN32(result));
    }
  } finally {
    free(subKeyPtr);
    free(valueNamePtr);
    free(openKeyPtr);
    free(data);
    free(dataSize);
  }
  RegCloseKey(openKeyPtr.value);

  return dataValue;
}
