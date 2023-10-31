import 'package:demoapp/constants/string_constants.dart';
import 'package:demoapp/style/app_colors.dart';
import 'package:demoapp/style/app_fonts.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pretty_gauge/pretty_gauge.dart';
import '../constants/dimension_constants.dart';

// ignore: must_be_immutable
class Header extends StatelessWidget {
  double totalHours;
  Header({super.key, required this.totalHours});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: Get.width,
        decoration: BoxDecoration(
            color: AppColors.backgroundColor,
            borderRadius: BorderRadius.circular(DimensionConstant.headerBorderRadius),
            boxShadow: [
              DimensionConstant.headerShadow,
            ]),
        padding: const EdgeInsets.only(
            left: DimensionConstant.pageAllSidePadding, right: DimensionConstant.pageAllSidePadding),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                PrettyGauge(
                  gaugeSize: DimensionConstant.meterWidth,
                  minValue: 0,
                  maxValue: 248,
                  segments: [
                    GaugeSegment('Low', 50, AppColors.redColor),
                    GaugeSegment('Medium', 70, AppColors.yellowColor),
                    GaugeSegment('High', 128, AppColors.greenColor),
                  ],
                  currentValue: totalHours,
                  showMarkers: false,
                ),
                const SizedBox(
                  width: DimensionConstant.horizontalWidgetSpacing,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      StringConstant.productivityMeter,
                      style: AppFonts.header2TextStyle,
                    ),
                    const SizedBox(
                      height: DimensionConstant.verticalWidgetSpacing * 0.5,
                    ),
                    Row(
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.sick,
                              color: AppColors.redColor,
                            ),
                            const SizedBox(
                              width: DimensionConstant.horizontalWidgetSpacing * 0.5,
                            ),
                            Text(
                              StringConstant.poor,
                              style: AppFonts.header2TextStyle.copyWith(color: AppColors.redColor),
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: DimensionConstant.horizontalWidgetSpacing * 2,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.face,
                              color: AppColors.yellowColor,
                            ),
                            const SizedBox(
                              width: DimensionConstant.horizontalWidgetSpacing * 0.5,
                            ),
                            Text(
                              StringConstant.average,
                              style: AppFonts.header2TextStyle.copyWith(color: AppColors.yellowColor),
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: DimensionConstant.horizontalWidgetSpacing * 2,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.emoji_emotions,
                              color: AppColors.greenColor,
                            ),
                            const SizedBox(
                              width: DimensionConstant.horizontalWidgetSpacing * 0.5,
                            ),
                            Text(
                              StringConstant.good,
                              style: AppFonts.header2TextStyle.copyWith(color: AppColors.greenColor),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
            Container(
              decoration: BoxDecoration(
                  color: AppColors.borderColor,
                  borderRadius: BorderRadius.circular(DimensionConstant.headerTotalHoursBorderRadius)),
              padding: const EdgeInsets.symmetric(
                  horizontal: DimensionConstant.headerWorkingHourInternalPadding,
                  vertical: DimensionConstant.headerWorkingHourInternalPadding * 0.5),
              child: Text(
                '${StringConstant.totalWorkingHours}: $totalHours',
                style: AppFonts.header1TextStyle,
              ),
            )
          ],
        ));
  }
}
