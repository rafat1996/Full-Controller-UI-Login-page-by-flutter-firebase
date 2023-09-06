import 'package:flutter/material.dart';
import 'package:get/get.dart';
String textMin="44".tr;
String textMax="45".tr;

validInput(String val, int min, int max, String type) {
  if (type == "username") {
    if (!GetUtils.isUsername(val)) {
      return "40".tr;
    }
  }

  if (type == "email") {
    if (!GetUtils.isEmail(val)) {
      return "41".tr;
    }
  }

  if (type == "phone") {
    if (!GetUtils.isPhoneNumber(val)) {
      return "42".tr;
    }
  }
  if (val.isEmpty) {
    return "43".tr;
  }

  if (val.length < min) {
    return "$textMin $min";
  }
  if (val.length > max) {
 return "$textMax $max";
  }
}
