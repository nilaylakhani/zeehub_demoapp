import 'package:demoapp/constants/dimension_constants.dart';
import 'package:demoapp/constants/string_constants.dart';
import 'package:demoapp/models/enum/attendance_enum.dart';
import 'package:demoapp/style/app_fonts.dart';

import 'package:demoapp/widgets/date_tile.dart';
import 'package:demoapp/widgets/header.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../models/day.dart';
import '../style/app_colors.dart';

class MonthlyInfoPage extends StatefulWidget {
  const MonthlyInfoPage({super.key});

  @override
  State<MonthlyInfoPage> createState() => _MonthlyInfoPageState();
}

class _MonthlyInfoPageState extends State<MonthlyInfoPage> {
  List<Day> daysList = [];
  double totalHours = 0;

  @override
  void initState() {
    loadStaticData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: Padding(
        padding: const EdgeInsets.all(DimensionConstant.pageAllSidePadding),
        child: Column(
          children: [
            //page header
            Header(totalHours: totalHours),
            const SizedBox(
              height: DimensionConstant.verticalWidgetSpacing,
            ),
            //day name header
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                for (String dayName in StringConstant.day) ...[
                  Container(
                    width: Get.width * 0.12,
                    padding: const EdgeInsets.only(bottom: DimensionConstant.dayHeaderBottomPadding),
                    child: Center(
                      child: Text(
                        dayName,
                        style: AppFonts.label2TextStyle,
                      ),
                    ),
                  )
                ]
              ],
            ),
            //month days
            SizedBox(
              width: Get.width,
              height: Get.height * 0.8,
              child: GridView.count(
                crossAxisCount: DimensionConstant.gridColumnCount,
                mainAxisSpacing: DimensionConstant.dayTileSpacing,
                crossAxisSpacing: DimensionConstant.dayTileSpacing,
                children: List.generate(daysList.length, (index) {
                  return DateTile(
                    day: daysList[index],
                  );
                }),
              ),
            ),
          ],
        ),
      ),
    );
  }

  loadStaticData() {
    for (int date = 1; date <= 31; date++) {
      Day? day;
      if (date == 4) {
        day = Day(attendanceStatus: AttendanceStatus.absent, dayValue: date, hours: 0);
      } else if (date == 10) {
        day = Day(attendanceStatus: AttendanceStatus.sickLeave, dayValue: date, hours: 0);
      } else if (date == 2) {
        day = Day(attendanceStatus: AttendanceStatus.holiday, dayValue: date, hours: 0);
      } else {
        day = Day(attendanceStatus: AttendanceStatus.present, dayValue: date, hours: 8);
      }
      daysList.add(day);
      totalHours += day.hours;
    }
  }
}
