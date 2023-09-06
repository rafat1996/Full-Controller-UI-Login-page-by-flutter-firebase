import 'package:ecommerce/core/localization/change-local.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'color.dart';
LocaleController controller=Get.put(LocaleController());
final appThemeArabic = ThemeData(
  fontFamily: "Cairo",
  textTheme: const TextTheme(
    headlineLarge: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 20,
        color: AppColor.primaryColor),
    headlineMedium: TextStyle(
        fontWeight: FontWeight.bold, fontSize: 20, color: AppColor.primaryColor),
    bodyLarge: TextStyle(
        height: 2, fontWeight: FontWeight.bold, color: AppColor.greyWhite),
  ),
);
final appThemeEnglish = ThemeData(
  fontFamily: "PlayfairDisplay",
  textTheme: const TextTheme(
    headlineLarge: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 20,
        color: AppColor.primaryColor),
    headlineMedium: TextStyle(
        fontWeight: FontWeight.bold, fontSize: 20, color: AppColor.primaryColor),
    bodyLarge: TextStyle(
        height: 2, fontWeight: FontWeight.bold, color: AppColor.greyWhite),
  ),
);
