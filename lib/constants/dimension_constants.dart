import 'package:demoapp/style/app_colors.dart';
import 'package:flutter/material.dart';

class DimensionConstant {
  DimensionConstant._();
  static const double headerBorderRadius = 16;
  static const double verticalWidgetSpacing = 40;
  static const double horizontalWidgetSpacing = 20;

  static const double dayTileBorderRadius = 6;
  static const double headerTotalHoursBorderRadius = 6;
  static const double dayTileBottomBorderWidth = 8;
  static const double pageAllSidePadding = 20;
  static const double dayTileSpacing = 30;
  static const int gridColumnCount = 7;
  static const double dayHeaderBottomPadding = 20;
  static const double meterWidth = 200;

  static const double headerWorkingHourInternalPadding = 30;
  static BoxShadow headerShadow =
      BoxShadow(color: AppColors.borderColor, blurRadius: 5.0, spreadRadius: 5, offset: const Offset(10, 10));
}
