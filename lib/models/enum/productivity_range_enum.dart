import 'package:demoapp/utils/enum_values_base_string.dart';

enum ProductivityRangeStatus { poor, average, good }

final productivityRangeStatusValues = EnumValuesString({
  "Poor": ProductivityRangeStatus.poor,
  "Average": ProductivityRangeStatus.average,
  "Good": ProductivityRangeStatus.good,
});
