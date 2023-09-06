import 'package:ecommerce/core/constant/route.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class ForgetPasswordController extends GetxController {
  checkEmail();
  goToVerfiyCode();
}

class ForgetPasswordControllerImp extends ForgetPasswordController {
  late TextEditingController email;
  GlobalKey<FormState> formstate = GlobalKey<FormState>();

  @override
  goToVerfiyCode() {
    var formData = formstate.currentState;
    if (formData!.validate()) {
      Get.offNamed(AppRoute.verfiyCode);
    } else {}
  }

  @override
  checkEmail() {}

  @override
  void onInit() {
    email = TextEditingController();

    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();

    super.dispose();
  }
}
