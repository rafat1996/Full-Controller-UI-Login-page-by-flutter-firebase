import 'dart:io';

import 'package:ecommerce/core/constant/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Future<bool> alertExitDialog() {
  Get.defaultDialog(title: "49".tr, middleText: "46".tr, actions: [
    ElevatedButton(
        style: ElevatedButton.styleFrom(backgroundColor: AppColor.primaryColor),
        onPressed: () {
          exit(0);
        },
        child: Text("47".tr)),
    ElevatedButton(
        style: ElevatedButton.styleFrom(backgroundColor: AppColor.primaryColor),
        onPressed: () {
          Get.back();
        },
        child: Text("48".tr)),
  ]);
  return Future.value(true);
}
