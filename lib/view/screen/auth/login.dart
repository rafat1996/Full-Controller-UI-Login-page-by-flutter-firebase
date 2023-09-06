import 'package:ecommerce/controller/auth/login-controller.dart';
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
import '../../widget/auth/logoAuth.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColor.white,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: AppColor.white,
          elevation: 0.0,
          title: Text('19'.tr,
              style: Theme.of(context)
                  .textTheme
                  .headlineLarge!
                  .copyWith(color: AppColor.greyWhite)),
        ),
        body: WillPopScope(
          onWillPop: alertExitDialog,
          child: GetBuilder<LoginControllerImp>(
            builder: (controller) => Container(
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
              child: Form(
                key: controller.formstate,
                child: ListView(children: [
                  const LogoAuth(),
                  const SizedBox(height: 20),
                  CustomTextTitleAuth(text: "7".tr),
                  const SizedBox(height: 10),
                  CustomTextBodyAuth(text: "8".tr),
                  const SizedBox(height: 65),
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
                    obscureText: controller.isHiddenPassword,
                    onTapPassword: (){controller.showPassword();},
                    valid: (val) {
                      return validInput(val!, 8, 50, "password");
                    },
                    hinttext: "13".tr,
                    iconData: Icons.lock_outline,
                    labeltext: "17".tr,
                    mycontroller: controller.password,
                    isNumber: false,
                  ),
                  InkWell(
                    onTap: () {
                      controller.goToForgetPassword();
                    },
                    child: Text(
                      "18".tr,
                      textAlign: TextAlign.end,
                    ),
                  ),
                  CustomButtomAuth(
                      text: "19".tr,
                      onPressed: () {
                        controller.login();
                      }),
                  const SizedBox(height: 30),
                  CustomTextSignUpOrSignIn(
                    textOne: "21".tr,
                    textTwo: "20".tr,
                    onTap: () {
                      controller.goToSignUp();
                    },
                  ),
                ]),
              ),
            ),
          ),
        ));
  }
}
