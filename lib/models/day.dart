import 'package:demoapp/models/enum/attendance_enum.dart';

class Day {
  int dayValue;
  double hours;
  AttendanceStatus attendanceStatus;
  Day({required this.attendanceStatus, required this.dayValue, required this.hours});
}
