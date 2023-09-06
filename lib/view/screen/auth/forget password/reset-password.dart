import 'package:ecommerce/core/function/valid-input.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../controller/auth/reset-password-controller.dart';
import '../../../../core/constant/color.dart';

import '../../../widget/auth/custombuttonauth.dart';
import '../../../widget/auth/customtextbodyauth.dart';
import '../../../widget/auth/customtextformauth.dart';
import '../../../widget/auth/customtexttitleauth.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: AppColor.white,
          elevation: 0.0,
          title: Text('29'.tr,
              style: Theme.of(context)
                  .textTheme
                  .headlineLarge!
                  .copyWith(color: AppColor.greyWhite)),
        ),
        body: GetBuilder<ResetPasswordControllerImp>(
          builder: (controller) => Container(
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
            child: Form(
              key: controller.formstate,
              child: ListView(children: [
                const SizedBox(height: 20),
                CustomTextTitleAuth(text: "30".tr),
                const SizedBox(height: 10),
                CustomTextBodyAuth(text: "31".tr),
                const SizedBox(height: 15),
                CustonTextFormAuth(
                   obscureText: controller.isHiddenPassword1,
                        onTapPassword: () {
                          controller.showPassword1();
                        },
                  valid: (val) {
                    return validInput(val!, 8, 50, "password");
                  },
                  mycontroller: controller.password,
                  hinttext: "13".tr,
                  iconData: Icons.lock_outline,
                  labeltext: "17".tr,
                  isNumber: false,
                ),
                CustonTextFormAuth(
                   obscureText: controller.isHiddenPassword2,
                        onTapPassword: () {
                          controller.showPassword2();
                        },
                  valid: (val) {
                    return validInput(val!, 8, 50, "password");
                  },
                  mycontroller: controller.repassword,
                  hinttext: "32".tr,
                  iconData: Icons.lock_outline,
                  labeltext: "17".tr,
                  isNumber: false,
                ),
                CustomButtomAuth(
                    text: "33".tr,
                    onPressed: () {
                      controller.goToSuccessResetPassword();
                    }),
                const SizedBox(height: 40),
              ]),
            ),
          ),
        ));
  }
}
