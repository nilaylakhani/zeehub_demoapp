import 'package:demoapp/utils/enum_values_base_string.dart';

enum AttendanceStatus { present, absent, sickLeave, holiday, emergencyLeave, annualLeave }

final attendanceStatusValues = EnumValuesString({
  "Present": AttendanceStatus.present,
  "Absent": AttendanceStatus.absent,
  "Sick Leave": AttendanceStatus.sickLeave,
  "Holiday": AttendanceStatus.holiday,
  "Emergency Leave": AttendanceStatus.emergencyLeave,
  "Annual Leave": AttendanceStatus.annualLeave
});
