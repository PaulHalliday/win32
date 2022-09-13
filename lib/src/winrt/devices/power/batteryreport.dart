// batteryreport.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import, directives_ordering
// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../../api_ms_win_core_winrt_string_l1_1_0.dart';
import '../../../combase.dart';
import '../../../exceptions.dart';
import '../../../macros.dart';
import '../../../utils.dart';
import '../../../types.dart';
import '../../../winrt_callbacks.dart';
import '../../../winrt_helpers.dart';

import '../../../winrt/internal/hstring_array.dart';

import '../../../winrt/devices/power/ibatteryreport.dart';
import '../../../winrt/foundation/ireference.dart';
import '../../../winrt/system/power/enums.g.dart';
import '../../../com/iinspectable.dart';

/// {@category Class}
/// {@category winrt}
class BatteryReport extends IInspectable implements IBatteryReport {
  BatteryReport.fromRawPointer(super.ptr);

  // IBatteryReport methods
  late final _iBatteryReport = IBatteryReport.from(this);

  @override
  int? get chargeRateInMilliwatts => _iBatteryReport.chargeRateInMilliwatts;

  @override
  int? get designCapacityInMilliwattHours =>
      _iBatteryReport.designCapacityInMilliwattHours;

  @override
  int? get fullChargeCapacityInMilliwattHours =>
      _iBatteryReport.fullChargeCapacityInMilliwattHours;

  @override
  int? get remainingCapacityInMilliwattHours =>
      _iBatteryReport.remainingCapacityInMilliwattHours;

  @override
  BatteryStatus get status => _iBatteryReport.status;
}
