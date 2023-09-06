import 'package:ecommerce/controller/onboarding-controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/constant/color.dart';
import '../widget/onboarding/custom-button.dart';
import '../widget/onboarding/dot-controller.dart';
import '../widget/onboarding/slider-page.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(OnBoardingControllerImp());
    return Scaffold(
      backgroundColor: AppColor.white,
      body: SafeArea(
        child: Column(
          children: [
            const Expanded(flex: 3, child: SliderPageOnboarding()),
            Expanded(
                flex: 1,
                child: Column(
                  children: const [
                    DotControllerOnboarding(),
                    Spacer(
                      flex: 2,
                    ),
                    CustomButtonOnboarding()
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
