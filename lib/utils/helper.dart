import 'package:demoapp/models/enum/attendance_enum.dart';
import 'package:demoapp/style/app_colors.dart';
import 'package:flutter/material.dart';

Color getAttendanceColor(AttendanceStatus attendanceStatus) {
  switch (attendanceStatus) {
    case AttendanceStatus.present:
      return AppColors.greenColor;

    case AttendanceStatus.absent:
      return AppColors.redColor;

    case AttendanceStatus.sickLeave:
      return AppColors.blueColor;
    case AttendanceStatus.holiday:
      return AppColors.blueColor;
    case AttendanceStatus.annualLeave:
      return AppColors.blueColor;
    default:
      return AppColors.greenColor;
  }
}

Color getAttendanceAccentColor(AttendanceStatus attendanceStatus) {
  switch (attendanceStatus) {
    case AttendanceStatus.present:
      return AppColors.greenAccentColor;

    case AttendanceStatus.absent:
      return AppColors.redAccentColor;

    case AttendanceStatus.sickLeave:
      return AppColors.blueAccentColor;
    case AttendanceStatus.holiday:
      return AppColors.blueAccentColor;
    case AttendanceStatus.annualLeave:
      return AppColors.blueAccentColor;
    default:
      return AppColors.greenAccentColor;
  }
}
