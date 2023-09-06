import 'package:ecommerce/controller/onboarding-controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/constant/color.dart';
import '../../../data/datasource/static/static.dart';

class SliderPageOnboarding extends GetView<OnBoardingControllerImp> {
  const SliderPageOnboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
        controller: controller.pageController,
        onPageChanged: (value) {
          controller.onPageChanged(value);
        },
        itemCount: onboardingList.length,
        itemBuilder: (context, i) => Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                Image.asset(
                  onboardingList[i].image,
                  width: 200,
                  height: 250,
                  fit: BoxFit.fill,
                ),
                const SizedBox(
                  height: 60,
                ),
                Text(
                  onboardingList[i].title,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: AppColor.primaryColor),
                ),
                 SizedBox(
                  height: Get.width /4,
                ),
                Container(
                    alignment: Alignment.center,
                    width: double.infinity,
                    child: Text(
                      onboardingList[i].body,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                          height: 2,
                          fontWeight: FontWeight.bold,
                          color: AppColor.greyWhite),
                    ))
              ],
            ));
  }
}
