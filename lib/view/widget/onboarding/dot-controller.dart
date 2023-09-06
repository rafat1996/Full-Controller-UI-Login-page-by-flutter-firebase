import 'package:ecommerce/controller/onboarding-controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/constant/color.dart';
import '../../../data/datasource/static/static.dart';

class DotControllerOnboarding extends StatelessWidget {
  const DotControllerOnboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OnBoardingControllerImp>(builder: ((controller) =>  Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ...List.generate(
            onboardingList.length,
            (index) => AnimatedContainer(
                  margin: const EdgeInsets.only(right: 5),
                  width: controller.currentIndex==index? 20:7,
                  height: 7,
                  duration: const Duration(milliseconds: 900),
                  decoration: BoxDecoration(
                      color: AppColor.primaryColor,
                      borderRadius: BorderRadius.circular(10)),
                ))
      ],
    )));
  }
}
