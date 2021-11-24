// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Struct sizes are a mapping of name to 32-bit and 64-bit sizes. The easiest
// way to generate the first two maps is by compiling and running
// struct_sizes.cpp on both 32-bit and 64-bit architectures, and copying the
// resultant output directly into this file.

const structSize64 = {
  'COR_FIELD_OFFSET': 8,
  'DECIMAL': 16,
  'DEVMODE': 220,
  'GUID': 16,
  'MMTIME': 12,
  'OVERLAPPED': 32,
  'PRINTER_NOTIFY_INFO_DATA': 32,
  'PROCESS_HEAP_ENTRY': 40,
  'PROPVARIANT': 24,
  'SYSTEM_INFO': 48,
  'VARIANT': 24,
  'WLAN_RAW_DATA_LIST': 16,
  'ACCEL': 6,
  'ACL': 8,
  'ACTCTX': 56,
  'ADDJOB_INFO_1': 16,
  'addrinfo': 48,
  'APPX_PACKAGE_SETTINGS': 16,
  'ARRAYDESC': 32,
  'BIND_OPTS': 16,
  'BITMAP': 32,
  'BITMAPFILEHEADER': 14,
  'BITMAPINFO': 44,
  'BITMAPINFOHEADER': 40,
  'BLENDFUNCTION': 4,
  'BLUETOOTH_ADDRESS': 8,
  'BLUETOOTH_AUTHENTICATION_CALLBACK_PARAMS': 576,
  'BLUETOOTH_DEVICE_INFO': 560,
  'BLUETOOTH_DEVICE_SEARCH_PARAMS': 40,
  'BLUETOOTH_FIND_RADIO_PARAMS': 4,
  'BLUETOOTH_OOB_DATA_INFO': 32,
  'BLUETOOTH_PIN_INFO': 17,
  'BLUETOOTH_RADIO_INFO': 520,
  'BSMINFO': 32,
  'BY_HANDLE_FILE_INFORMATION': 52,
  'CBT_CREATEWNDW': 16,
  'CBTACTIVATESTRUCT': 16,
  'CHANGEFILTERSTRUCT': 8,
  'CHAR_INFO': 4,
  'CHOOSECOLOR': 72,
  'CHOOSEFONT': 104,
  'COLORADJUSTMENT': 24,
  'COMDLG_FILTERSPEC': 16,
  'COMMCONFIG': 52,
  'COMMPROP': 64,
  'COMMTIMEOUTS': 20,
  'COMSTAT': 12,
  'CONSOLE_CURSOR_INFO': 8,
  'CONSOLE_READCONSOLE_CONTROL': 16,
  'CONSOLE_SCREEN_BUFFER_INFO': 22,
  'CONSOLE_SELECTION_INFO': 16,
  'COORD': 4,
  'CREATESTRUCT': 80,
  'CREDENTIAL': 80,
  'CREDENTIAL_ATTRIBUTE': 24,
  'CURSORINFO': 24,
  'CWPRETSTRUCT': 40,
  'CWPSTRUCT': 40,
  'DCB': 28,
  'DEBUGHOOKINFO': 32,
  'DESIGNVECTOR': 72,
  'DIBSECTION': 104,
  'DISK_GEOMETRY': 24,
  'DISK_GEOMETRY_EX': 40,
  'DISPPARAMS': 24,
  'DLGITEMTEMPLATE': 18,
  'DLGTEMPLATE': 18,
  'DLLVERSIONINFO': 20,
  'DOC_INFO_1': 24,
  'DOT11_AUTH_CIPHER_PAIR': 8,
  'DOT11_BSSID_LIST': 20,
  'DOT11_NETWORK': 40,
  'DOT11_NETWORK_LIST': 48,
  'DOT11_SSID': 36,
  'DRAWTEXTPARAMS': 20,
  'DTBGOPTS': 24,
  'DTTOPTS': 72,
  'DWM_BLURBEHIND': 20,
  'EAP_METHOD_TYPE': 16,
  'EAP_TYPE': 12,
  'ELEMDESC': 32,
  'ENUMLOGFONTEX': 348,
  'EVENTMSG': 24,
  'EXCEPINFO': 64,
  'fd_set': 520,
  'FILETIME': 8,
  'FINDREPLACE': 80,
  'FUNCDESC': 88,
  'GESTURECONFIG': 12,
  'GESTUREINFO': 56,
  'GESTURENOTIFYSTRUCT': 24,
  'GUITHREADINFO': 72,
  'HARDWAREINPUT': 8,
  'hostent': 32,
  'ICONINFO': 32,
  'ICONINFOEX': 1080,
  'IDLDESC': 16,
  'INITCOMMONCONTROLSEX': 8,
  'INPUT': 40,
  'ITEMIDLIST': 3,
  'JOB_INFO_1': 96,
  'KBDLLHOOKSTRUCT': 24,
  'KEYBDINPUT': 24,
  'KNOWNFOLDER_DEFINITION': 112,
  'L2_NOTIFICATION_DATA': 40,
  'LASTINPUTINFO': 8,
  'LOGBRUSH': 16,
  'LOGFONT': 92,
  'LOGPALETTE': 8,
  'LUID': 8,
  'MAGCOLOREFFECT': 100,
  'MAGIMAGEHEADER': 40,
  'MAGTRANSFORM': 36,
  'MARGINS': 16,
  'MCI_OPEN_PARMS': 36,
  'MCI_PLAY_PARMS': 16,
  'MCI_SEEK_PARMS': 12,
  'MCI_STATUS_PARMS': 24,
  'MENUINFO': 40,
  'MENUITEMINFO': 80,
  'MENUITEMTEMPLATE': 6,
  'MENUITEMTEMPLATEHEADER': 4,
  'METAFILEPICT': 24,
  'MIDIEVENT': 16,
  'MIDIHDR': 112,
  'MIDIINCAPS': 76,
  'MIDIOUTCAPS': 84,
  'MIDIPROPTEMPO': 8,
  'MIDIPROPTIMEDIV': 8,
  'MIDISTRMBUFFVER': 12,
  'MINMAXINFO': 40,
  'MODEMDEVCAPS': 80,
  'MODEMSETTINGS': 48,
  'MODLOAD_DATA': 24,
  'MONITORINFO': 40,
  'MOUSEHOOKSTRUCT': 32,
  'MOUSEHOOKSTRUCTEX': 32,
  'MOUSEINPUT': 32,
  'MOUSEMOVEPOINT': 24,
  'MSG': 48,
  'MSLLHOOKSTRUCT': 32,
  'NDIS_OBJECT_HEADER': 4,
  'NEWTEXTMETRIC': 76,
  'NLM_SIMULATED_PROFILE_INFO': 524,
  'NONCLIENTMETRICS': 504,
  'NOTIFYICONDATA': 976,
  'OPENCARD_SEARCH_CRITERIA': 96,
  'OPENCARDNAME': 176,
  'OPENCARDNAME_EX': 128,
  'OPENFILENAME': 152,
  'OSVERSIONINFO': 276,
  'OSVERSIONINFOEXW': 284,
  'OVERLAPPED_ENTRY': 32,
  'PAINTSTRUCT': 72,
  'PALETTEENTRY': 4,
  'PARAMDESC': 16,
  'PARAMDESCEX': 32,
  'PHYSICAL_MONITOR': 264,
  'POINT': 8,
  'POINTS': 4,
  'POLYTEXT': 56,
  'PORT_INFO_1': 8,
  'PORT_INFO_2': 32,
  'POWERBROADCAST_SETTING': 24,
  'PRINT_EXECUTION_DATA': 8,
  'PRINTER_DEFAULTS': 24,
  'PRINTER_INFO_1': 32,
  'PRINTER_INFO_2': 136,
  'PRINTER_INFO_3': 8,
  'PRINTER_INFO_4': 24,
  'PRINTER_INFO_5': 32,
  'PRINTER_INFO_6': 4,
  'PRINTER_NOTIFY_INFO': 48,
  'PRINTER_OPTIONS': 8,
  'PROCESS_INFORMATION': 24,
  'PROPERTYKEY': 20,
  'PROPSPEC': 16,
  'protoent': 24,
  'RAWHID': 12,
  'RAWINPUT': 48,
  'RAWINPUTDEVICE': 16,
  'RAWINPUTDEVICELIST': 16,
  'RAWINPUTHEADER': 24,
  'RAWKEYBOARD': 16,
  'RECT': 16,
  'RGBQUAD': 4,
  'SAFEARRAY': 32,
  'SAFEARRAYBOUND': 8,
  'SCARD_ATRMASK': 76,
  'SCARD_IO_REQUEST': 8,
  'SCARD_READERSTATE': 64,
  'SCROLLBARINFO': 60,
  'SCROLLINFO': 28,
  'SECURITY_ATTRIBUTES': 24,
  'SECURITY_DESCRIPTOR': 40,
  'servent': 32,
  'SHELL_ITEM_RESOURCE': 536,
  'SHELLEXECUTEINFO': 112,
  'SHITEMID': 3,
  'SHQUERYRBINFO': 24,
  'SIZE': 8,
  'SMALL_RECT': 8,
  'SOCKADDR': 16,
  'SOLE_AUTHENTICATION_SERVICE': 24,
  'SP_DEVINFO_DATA': 32,
  'STARTUPINFO': 104,
  'STARTUPINFOEX': 112,
  'STATPROPSETSTG': 64,
  'STATPROPSTG': 16,
  'STATSTG': 80,
  'STRRET': 272,
  'STYLESTRUCT': 8,
  'SYMBOL_INFO': 88,
  'SYSTEM_BATTERY_STATE': 32,
  'SYSTEM_POWER_STATUS': 12,
  'SYSTEMTIME': 16,
  'TASKDIALOG_BUTTON': 12,
  'TASKDIALOGCONFIG': 160,
  'TEXTMETRIC': 60,
  'timeval': 8,
  'TITLEBARINFO': 44,
  'TITLEBARINFOEX': 140,
  'TOKEN_APPCONTAINER_INFORMATION': 8,
  'TOUCHINPUT': 48,
  'TPMPARAMS': 20,
  'TYPEATTR': 96,
  'TYPEDESC': 16,
  'UNSIGNED_RATIO': 8,
  'UPDATELAYEREDWINDOWINFO': 80,
  'VALENT': 32,
  'VARDESC': 64,
  'VS_FIXEDFILEINFO': 52,
  'WAVEFORMATEX': 18,
  'WAVEHDR': 48,
  'WAVEOUTCAPS': 84,
  'WIN32_FIND_DATA': 592,
  'WINDOWINFO': 60,
  'WINDOWPLACEMENT': 44,
  'WLAN_ASSOCIATION_ATTRIBUTES': 68,
  'WLAN_AUTH_CIPHER_PAIR_LIST': 12,
  'WLAN_AVAILABLE_NETWORK': 628,
  'WLAN_AVAILABLE_NETWORK_LIST': 636,
  'WLAN_BSS_ENTRY': 360,
  'WLAN_BSS_LIST': 368,
  'WLAN_CONNECTION_ATTRIBUTES': 604,
  'WLAN_CONNECTION_NOTIFICATION_DATA': 572,
  'WLAN_CONNECTION_PARAMETERS': 40,
  'WLAN_COUNTRY_OR_REGION_STRING_LIST': 8,
  'WLAN_DEVICE_SERVICE_GUID_LIST': 24,
  'WLAN_DEVICE_SERVICE_NOTIFICATION_DATA': 28,
  'WLAN_HOSTED_NETWORK_CONNECTION_SETTINGS': 40,
  'WLAN_HOSTED_NETWORK_DATA_PEER_STATE_CHANGE': 28,
  'WLAN_HOSTED_NETWORK_PEER_STATE': 12,
  'WLAN_HOSTED_NETWORK_RADIO_STATE': 8,
  'WLAN_HOSTED_NETWORK_SECURITY_SETTINGS': 8,
  'WLAN_HOSTED_NETWORK_STATE_CHANGE': 12,
  'WLAN_HOSTED_NETWORK_STATUS': 52,
  'WLAN_INTERFACE_CAPABILITY': 276,
  'WLAN_INTERFACE_INFO': 532,
  'WLAN_INTERFACE_INFO_LIST': 540,
  'WLAN_MAC_FRAME_STATISTICS': 96,
  'WLAN_MSM_NOTIFICATION_DATA': 580,
  'WLAN_PHY_FRAME_STATISTICS': 144,
  'WLAN_PHY_RADIO_STATE': 12,
  'WLAN_PROFILE_INFO': 516,
  'WLAN_PROFILE_INFO_LIST': 524,
  'WLAN_RADIO_STATE': 772,
  'WLAN_RATE_SET': 256,
  'WLAN_RAW_DATA': 8,
  'WLAN_SECURITY_ATTRIBUTES': 16,
  'WLAN_STATISTICS': 368,
  'WNDCLASS': 72,
  'WNDCLASSEX': 80,
  'WTA_OPTIONS': 8,
  'XFORM': 24,
};

const structSize32 = {
  'COR_FIELD_OFFSET': 8,
  'DECIMAL': 16,
  'DEVMODE': 220,
  'GUID': 16,
  'MMTIME': 12,
  'OVERLAPPED': 20,
  'PRINTER_NOTIFY_INFO_DATA': 20,
  'PROCESS_HEAP_ENTRY': 28,
  'PROPVARIANT': 16,
  'SYSTEM_INFO': 36,
  'VARIANT': 16,
  'WLAN_RAW_DATA_LIST': 16,
  'ACCEL': 6,
  'ACL': 8,
  'ACTCTX': 32,
  'ADDJOB_INFO_1': 8,
  'addrinfo': 32,
  'APPX_PACKAGE_SETTINGS': 8,
  'ARRAYDESC': 20,
  'BIND_OPTS': 16,
  'BITMAP': 24,
  'BITMAPFILEHEADER': 14,
  'BITMAPINFO': 44,
  'BITMAPINFOHEADER': 40,
  'BLENDFUNCTION': 4,
  'BLUETOOTH_ADDRESS': 8,
  'BLUETOOTH_AUTHENTICATION_CALLBACK_PARAMS': 576,
  'BLUETOOTH_DEVICE_INFO': 560,
  'BLUETOOTH_DEVICE_SEARCH_PARAMS': 32,
  'BLUETOOTH_FIND_RADIO_PARAMS': 4,
  'BLUETOOTH_OOB_DATA_INFO': 32,
  'BLUETOOTH_PIN_INFO': 17,
  'BLUETOOTH_RADIO_INFO': 520,
  'BSMINFO': 20,
  'BY_HANDLE_FILE_INFORMATION': 52,
  'CBT_CREATEWNDW': 8,
  'CBTACTIVATESTRUCT': 8,
  'CHANGEFILTERSTRUCT': 8,
  'CHAR_INFO': 4,
  'CHOOSECOLOR': 36,
  'CHOOSEFONT': 60,
  'COLORADJUSTMENT': 24,
  'COMDLG_FILTERSPEC': 8,
  'COMMCONFIG': 52,
  'COMMPROP': 64,
  'COMMTIMEOUTS': 20,
  'COMSTAT': 12,
  'CONSOLE_CURSOR_INFO': 8,
  'CONSOLE_READCONSOLE_CONTROL': 16,
  'CONSOLE_SCREEN_BUFFER_INFO': 22,
  'CONSOLE_SELECTION_INFO': 16,
  'COORD': 4,
  'CREATESTRUCT': 48,
  'CREDENTIAL': 52,
  'CREDENTIAL_ATTRIBUTE': 16,
  'CURSORINFO': 20,
  'CWPRETSTRUCT': 20,
  'CWPSTRUCT': 20,
  'DCB': 28,
  'DEBUGHOOKINFO': 20,
  'DESIGNVECTOR': 72,
  'DIBSECTION': 84,
  'DISK_GEOMETRY': 24,
  'DISK_GEOMETRY_EX': 40,
  'DISPPARAMS': 16,
  'DLGITEMTEMPLATE': 18,
  'DLGTEMPLATE': 18,
  'DLLVERSIONINFO': 20,
  'DOC_INFO_1': 12,
  'DOT11_AUTH_CIPHER_PAIR': 8,
  'DOT11_BSSID_LIST': 20,
  'DOT11_NETWORK': 40,
  'DOT11_NETWORK_LIST': 48,
  'DOT11_SSID': 36,
  'DRAWTEXTPARAMS': 20,
  'DTBGOPTS': 24,
  'DTTOPTS': 64,
  'DWM_BLURBEHIND': 16,
  'EAP_METHOD_TYPE': 16,
  'EAP_TYPE': 12,
  'ELEMDESC': 16,
  'ENUMLOGFONTEX': 348,
  'EVENTMSG': 20,
  'EXCEPINFO': 32,
  'fd_set': 260,
  'FILETIME': 8,
  'FINDREPLACE': 40,
  'FUNCDESC': 52,
  'GESTURECONFIG': 12,
  'GESTUREINFO': 48,
  'GESTURENOTIFYSTRUCT': 20,
  'GUITHREADINFO': 48,
  'HARDWAREINPUT': 8,
  'hostent': 16,
  'ICONINFO': 20,
  'ICONINFOEX': 1068,
  'IDLDESC': 8,
  'INITCOMMONCONTROLSEX': 8,
  'INPUT': 28,
  'ITEMIDLIST': 3,
  'JOB_INFO_1': 64,
  'KBDLLHOOKSTRUCT': 20,
  'KEYBDINPUT': 16,
  'KNOWNFOLDER_DEFINITION': 76,
  'L2_NOTIFICATION_DATA': 32,
  'LASTINPUTINFO': 8,
  'LOGBRUSH': 12,
  'LOGFONT': 92,
  'LOGPALETTE': 8,
  'LUID': 8,
  'MAGCOLOREFFECT': 100,
  'MAGIMAGEHEADER': 36,
  'MAGTRANSFORM': 36,
  'MARGINS': 16,
  'MCI_OPEN_PARMS': 20,
  'MCI_PLAY_PARMS': 12,
  'MCI_SEEK_PARMS': 8,
  'MCI_STATUS_PARMS': 16,
  'MENUINFO': 28,
  'MENUITEMINFO': 48,
  'MENUITEMTEMPLATE': 6,
  'MENUITEMTEMPLATEHEADER': 4,
  'METAFILEPICT': 16,
  'MIDIEVENT': 16,
  'MIDIHDR': 64,
  'MIDIINCAPS': 76,
  'MIDIOUTCAPS': 84,
  'MIDIPROPTEMPO': 8,
  'MIDIPROPTIMEDIV': 8,
  'MIDISTRMBUFFVER': 12,
  'MINMAXINFO': 40,
  'MODEMDEVCAPS': 80,
  'MODEMSETTINGS': 48,
  'MODLOAD_DATA': 20,
  'MONITORINFO': 40,
  'MOUSEHOOKSTRUCT': 20,
  'MOUSEHOOKSTRUCTEX': 24,
  'MOUSEINPUT': 24,
  'MOUSEMOVEPOINT': 16,
  'MSG': 28,
  'MSLLHOOKSTRUCT': 24,
  'NDIS_OBJECT_HEADER': 4,
  'NEWTEXTMETRIC': 76,
  'NLM_SIMULATED_PROFILE_INFO': 524,
  'NONCLIENTMETRICS': 504,
  'NOTIFYICONDATA': 956,
  'OPENCARD_SEARCH_CRITERIA': 52,
  'OPENCARDNAME': 92,
  'OPENCARDNAME_EX': 72,
  'OPENFILENAME': 88,
  'OSVERSIONINFO': 276,
  'OSVERSIONINFOEXW': 284,
  'OVERLAPPED_ENTRY': 16,
  'PAINTSTRUCT': 64,
  'PALETTEENTRY': 4,
  'PARAMDESC': 8,
  'PARAMDESCEX': 24,
  'PHYSICAL_MONITOR': 260,
  'POINT': 8,
  'POINTS': 4,
  'POLYTEXT': 40,
  'PORT_INFO_1': 4,
  'PORT_INFO_2': 20,
  'POWERBROADCAST_SETTING': 24,
  'PRINT_EXECUTION_DATA': 8,
  'PRINTER_DEFAULTS': 12,
  'PRINTER_INFO_1': 16,
  'PRINTER_INFO_2': 84,
  'PRINTER_INFO_3': 4,
  'PRINTER_INFO_4': 12,
  'PRINTER_INFO_5': 20,
  'PRINTER_INFO_6': 4,
  'PRINTER_NOTIFY_INFO': 32,
  'PRINTER_OPTIONS': 8,
  'PROCESS_INFORMATION': 16,
  'PROPERTYKEY': 20,
  'PROPSPEC': 8,
  'protoent': 12,
  'RAWHID': 12,
  'RAWINPUT': 40,
  'RAWINPUTDEVICE': 12,
  'RAWINPUTDEVICELIST': 8,
  'RAWINPUTHEADER': 16,
  'RAWKEYBOARD': 16,
  'RECT': 16,
  'RGBQUAD': 4,
  'SAFEARRAY': 24,
  'SAFEARRAYBOUND': 8,
  'SCARD_ATRMASK': 76,
  'SCARD_IO_REQUEST': 8,
  'SCARD_READERSTATE': 56,
  'SCROLLBARINFO': 60,
  'SCROLLINFO': 28,
  'SECURITY_ATTRIBUTES': 12,
  'SECURITY_DESCRIPTOR': 20,
  'servent': 16,
  'SHELL_ITEM_RESOURCE': 536,
  'SHELLEXECUTEINFO': 60,
  'SHITEMID': 3,
  'SHQUERYRBINFO': 20,
  'SIZE': 8,
  'SMALL_RECT': 8,
  'SOCKADDR': 16,
  'SOLE_AUTHENTICATION_SERVICE': 16,
  'SP_DEVINFO_DATA': 28,
  'STARTUPINFO': 68,
  'STARTUPINFOEX': 72,
  'STATPROPSETSTG': 64,
  'STATPROPSTG': 12,
  'STATSTG': 72,
  'STRRET': 264,
  'STYLESTRUCT': 8,
  'SYMBOL_INFO': 88,
  'SYSTEM_BATTERY_STATE': 32,
  'SYSTEM_POWER_STATUS': 12,
  'SYSTEMTIME': 16,
  'TASKDIALOG_BUTTON': 8,
  'TASKDIALOGCONFIG': 96,
  'TEXTMETRIC': 60,
  'timeval': 8,
  'TITLEBARINFO': 44,
  'TITLEBARINFOEX': 140,
  'TOKEN_APPCONTAINER_INFORMATION': 4,
  'TOUCHINPUT': 40,
  'TPMPARAMS': 20,
  'TYPEATTR': 76,
  'TYPEDESC': 8,
  'UNSIGNED_RATIO': 8,
  'UPDATELAYEREDWINDOWINFO': 40,
  'VALENT': 16,
  'VARDESC': 36,
  'VS_FIXEDFILEINFO': 52,
  'WAVEFORMATEX': 18,
  'WAVEHDR': 32,
  'WAVEOUTCAPS': 84,
  'WIN32_FIND_DATA': 592,
  'WINDOWINFO': 60,
  'WINDOWPLACEMENT': 44,
  'WLAN_ASSOCIATION_ATTRIBUTES': 68,
  'WLAN_AUTH_CIPHER_PAIR_LIST': 12,
  'WLAN_AVAILABLE_NETWORK': 628,
  'WLAN_AVAILABLE_NETWORK_LIST': 636,
  'WLAN_BSS_ENTRY': 360,
  'WLAN_BSS_LIST': 368,
  'WLAN_CONNECTION_ATTRIBUTES': 604,
  'WLAN_CONNECTION_NOTIFICATION_DATA': 572,
  'WLAN_CONNECTION_PARAMETERS': 24,
  'WLAN_COUNTRY_OR_REGION_STRING_LIST': 8,
  'WLAN_DEVICE_SERVICE_GUID_LIST': 24,
  'WLAN_DEVICE_SERVICE_NOTIFICATION_DATA': 28,
  'WLAN_HOSTED_NETWORK_CONNECTION_SETTINGS': 40,
  'WLAN_HOSTED_NETWORK_DATA_PEER_STATE_CHANGE': 28,
  'WLAN_HOSTED_NETWORK_PEER_STATE': 12,
  'WLAN_HOSTED_NETWORK_RADIO_STATE': 8,
  'WLAN_HOSTED_NETWORK_SECURITY_SETTINGS': 8,
  'WLAN_HOSTED_NETWORK_STATE_CHANGE': 12,
  'WLAN_HOSTED_NETWORK_STATUS': 52,
  'WLAN_INTERFACE_CAPABILITY': 276,
  'WLAN_INTERFACE_INFO': 532,
  'WLAN_INTERFACE_INFO_LIST': 540,
  'WLAN_MAC_FRAME_STATISTICS': 96,
  'WLAN_MSM_NOTIFICATION_DATA': 580,
  'WLAN_PHY_FRAME_STATISTICS': 144,
  'WLAN_PHY_RADIO_STATE': 12,
  'WLAN_PROFILE_INFO': 516,
  'WLAN_PROFILE_INFO_LIST': 524,
  'WLAN_RADIO_STATE': 772,
  'WLAN_RATE_SET': 256,
  'WLAN_RAW_DATA': 8,
  'WLAN_SECURITY_ATTRIBUTES': 16,
  'WLAN_STATISTICS': 368,
  'WNDCLASS': 40,
  'WNDCLASSEX': 48,
  'WTA_OPTIONS': 8,
  'XFORM': 24,
};
