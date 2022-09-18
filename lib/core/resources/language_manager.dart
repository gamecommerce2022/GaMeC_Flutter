import 'package:flutter/material.dart';

enum LanguageType { english, vietnamese }

const String vietnamese = "vi";
const String english = "en";
const String assetPathLocalisations = "assets/translations";

const Locale vietnamLocal = Locale("vi", "VN");
const Locale englishLocal = Locale("en", "US");

extension LanguageTypeExtension on LanguageType {
  String getValue() {
    switch (this) {
      case LanguageType.english:
        return english;
      case LanguageType.vietnamese:
        return vietnamese;
    }
  }
}
