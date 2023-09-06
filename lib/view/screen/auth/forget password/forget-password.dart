import 'package:ecommerce/core/function/valid-input.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../controller/auth/forget-password-controller.dart';
import '../../../../core/constant/color.dart';
import '../../../widget/auth/custombuttonauth.dart';
import '../../../widget/auth/customtextbodyauth.dart';
import '../../../widget/auth/customtextformauth.dart';
import '../../../widget/auth/customtexttitleauth.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.white,
        elevation: 0.0,
        title: Text("18".tr,
            style: Theme.of(context)
                .textTheme
                .headlineLarge!
                .copyWith(color: AppColor.greyWhite)),
      ),
      body: GetBuilder<ForgetPasswordControllerImp>(
        builder: (controller) => Container(
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
          child: Form(
            key: controller.formstate,
            child: ListView(children: [
              const SizedBox(height: 20),
              CustomTextTitleAuth(text: "23".tr),
              const SizedBox(height: 10),
              CustomTextBodyAuth(text: "25".tr),
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
              CustomButtomAuth(
                  text: "24".tr,
                  onPressed: () {
                    controller.goToVerfiyCode();
                  }),
              const SizedBox(height: 30),
            ]),
          ),
        ),
      ),
    );
  }
}
