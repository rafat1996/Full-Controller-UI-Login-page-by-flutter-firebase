import 'package:ecommerce/core/constant/route.dart';
import 'package:ecommerce/core/localization/change-local.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widget/language/custom-button-language.dart';

class Language extends GetView<LocaleController> {
  const Language({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(15),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text(
            "1".tr,
            style: Theme.of(context).textTheme.headlineLarge,
          ),
          const SizedBox(
            height: 20,
          ),
          CustomButtonLanguage(
            langText: 'العربية',
            onPressed: () {
              controller.changeLocal("ar");
              Get.offNamed(AppRoute.onboarding);
            },
          ),
          CustomButtonLanguage(
            langText: 'English',
            onPressed: () {
              controller.changeLocal("en");
              Get.offNamed(AppRoute.onboarding);
            },
          ),
        ]),
      ),
    );
  }
}
