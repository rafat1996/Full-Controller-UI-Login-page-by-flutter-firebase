import 'package:ecommerce/core/constant/route.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class SignUpController extends GetxController {
  signUp();
  goToLogin();
}

class SignUpControllerImp extends SignUpController {
  late TextEditingController username;

  late TextEditingController email;
  late TextEditingController phone;

  late TextEditingController password;
  GlobalKey<FormState> formstate = GlobalKey<FormState>();
  bool isHiddenPassword = true;

  showPassword() {
    isHiddenPassword = isHiddenPassword == true ? false : true;
    update();
  }

  @override
  goToLogin() {
    Get.offNamed(AppRoute.login);
  }

  @override
  signUp() {
    var formData = formstate.currentState;
    if (formData!.validate()) {
      Get.offNamed(AppRoute.verfiyCode);
    } else {}
  }

  @override
  void onInit() {
    username = TextEditingController();
    email = TextEditingController();
    phone = TextEditingController();
    password = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    username.dispose();
    email.dispose();
    phone.dispose();
    password.dispose();
    super.dispose();
  }
}
