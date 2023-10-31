class EnumValuesString<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValuesString(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
