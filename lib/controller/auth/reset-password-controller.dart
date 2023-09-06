import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/constant/route.dart';

abstract class ResetPasswordController extends GetxController {
  resetpassword();
  goToSuccessResetPassword();
}

class ResetPasswordControllerImp extends ResetPasswordController {
  late TextEditingController password;
  late TextEditingController repassword;
  GlobalKey<FormState> formstate = GlobalKey<FormState>();
  bool isHiddenPassword1 = true;
  bool isHiddenPassword2 = true;

  showPassword1() {
    isHiddenPassword1 = isHiddenPassword1 == true ? false : true;
    update();
  }

  showPassword2() {
    isHiddenPassword2 = isHiddenPassword2 == true ? false : true;
    update();
  }

  @override
  resetpassword() {}

  @override
  goToSuccessResetPassword() {
    var formData = formstate.currentState;
    if (formData!.validate()) {
      Get.offNamed(AppRoute.successResetPassword);
    } else {}
  }

  @override
  void onInit() {
    password = TextEditingController();
    repassword = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    password.dispose();
    repassword.dispose();
    super.dispose();
  }
}
