import 'package:demoapp/constants/dimension_constants.dart';
import 'package:demoapp/models/enum/attendance_enum.dart';
import 'package:demoapp/utils/helper.dart';
import 'package:flutter/material.dart';

import '../models/day.dart';

import '../style/app_fonts.dart';

// ignore: must_be_immutable
class DateTile extends StatelessWidget {
  Day day;
  DateTile({super.key, required this.day});

  @override
  Widget build(BuildContext context) {
    Color accentColor = getAttendanceAccentColor(day.attendanceStatus);
    Color mainColor = getAttendanceColor(day.attendanceStatus);
    return ClipRRect(
      borderRadius: BorderRadius.circular(DimensionConstant.dayTileBorderRadius),
      child: Container(
        decoration: BoxDecoration(
            color: accentColor,
            border: Border(bottom: BorderSide(color: mainColor, width: DimensionConstant.dayTileBottomBorderWidth))),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '${day.dayValue}',
              style: AppFonts.label1TextStyle,
            ),
            Text(
              attendanceStatusValues.reverse[day.attendanceStatus] ?? '',
              style: AppFonts.label2TextStyle.copyWith(color: mainColor),
            ),
          ],
        ),
      ),
    );
  }
}
