import 'package:ecommerce/controller/auth/signup-controller.dart';
import 'package:ecommerce/core/function/alert-exit-doalog.dart';
import 'package:ecommerce/core/function/valid-input.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/constant/color.dart';
import '../../widget/auth/custombuttonauth.dart';
import '../../widget/auth/customtextbodyauth.dart';
import '../../widget/auth/customtextformauth.dart';
import '../../widget/auth/customtextsignupOrsignin.dart';
import '../../widget/auth/customtexttitleauth.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.white,
        elevation: 0.0,
        title: Text('20'.tr,
            style: Theme.of(context)
                .textTheme
                .headlineLarge!
                .copyWith(color: AppColor.greyWhite)),
      ),
      body: WillPopScope(
        onWillPop: alertExitDialog,
        child: GetBuilder<SignUpControllerImp>(
            builder: (controller) => Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                  child: Form(
                    key: controller.formstate,
                    child: ListView(children: [
                      const SizedBox(height: 20),
                      CustomTextTitleAuth(text: "7".tr),
                      const SizedBox(height: 10),
                      CustomTextBodyAuth(text: "9".tr),
                      const SizedBox(height: 65),
                      CustonTextFormAuth(
                        valid: (val) {
                          return validInput(val!, 8, 50, "username");
                        },
                        hinttext: "10".tr,
                        iconData: Icons.email_outlined,
                        labeltext: "14".tr,
                        mycontroller: controller.username,
                        isNumber: false,
                      ),
                      CustonTextFormAuth(
                        valid: (val) {
                          return validInput(val!, 5, 100, "email");
                        },
                        hinttext: "11".tr,
                        iconData: Icons.email_outlined,
                        labeltext: "15".tr,
                        mycontroller: controller.email,
                        isNumber: false,
                      ),
                      CustonTextFormAuth(
                        valid: (val) {
                          return validInput(val!, 8, 50, "phone");
                        },
                        hinttext: "12".tr,
                        iconData: Icons.phone,
                        labeltext: "16".tr,
                        mycontroller: controller.phone,
                        isNumber: true,
                      ),
                      CustonTextFormAuth(
                        obscureText: controller.isHiddenPassword,
                        onTapPassword: () {
                          controller.showPassword();
                        },
                        valid: (val) {
                          return validInput(val!, 8, 50, "password");
                        },
                        hinttext: "13".tr,
                        iconData: Icons.lock_outline,
                        labeltext: "17".tr,
                        mycontroller: controller.password,
                        isNumber: false,
                      ),
                      CustomButtomAuth(
                          text: "20".tr,
                          onPressed: () {
                            controller.signUp();
                          }),
                      const SizedBox(height: 30),
                      CustomTextSignUpOrSignIn(
                        textOne: "22".tr,
                        textTwo: "19".tr,
                        onTap: () {
                          controller.goToLogin();
                        },
                      ),
                    ]),
                  ),
                )),
      ),
    );
  }
}
