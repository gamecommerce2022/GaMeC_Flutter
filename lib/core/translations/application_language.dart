import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'local_storage/local_storage.dart';

class AppLanguage extends GetxController {
  String appLocale = 'en';

  @override
  void onInit() async {
    super.onInit();
    LocalStorage localStorage = LocalStorage();

    appLocale = await localStorage.languageSelected ?? 'en';
    update();
    Get.updateLocale(Locale(appLocale));
  }

  void changeLanguage() async {
    LocalStorage localStorage = LocalStorage();

    if (appLocale == 'en') {
      appLocale = 'vi';
      localStorage.saveLanguageToDisk('vi');
    } else {
      appLocale = 'en';
      localStorage.saveLanguageToDisk('en');
    }
    update();
  }
}
