import 'package:ecommerce/core/services/services.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../constant/theme.dart';

class LocaleController extends GetxController {
  Locale? language;

  MyServices myServices = Get.find();

  late ThemeData themeLang;

  changeLocal(String langCode) {
    Locale locale = Locale(langCode);
    myServices.sharedPreferences.setString("lang", langCode);
    themeLang=langCode=="ar"? appThemeArabic :appThemeEnglish;
    Get.changeTheme(themeLang);
    Get.updateLocale(locale);
  }

  @override
  void onInit() {
    String? mySharedPrefLang = myServices.sharedPreferences.getString("lang");
    if (mySharedPrefLang == "ar") {
      language = const Locale("ar");
      themeLang=appThemeArabic;
    } else if (mySharedPrefLang == "en") {
      language = const Locale("en");
      themeLang=appThemeEnglish;
    } 
    else {
      language = Locale(Get.deviceLocale!.languageCode);
      themeLang=appThemeEnglish;
    }
    super.onInit();
  }
}
