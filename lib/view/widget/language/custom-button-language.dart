import 'package:flutter/material.dart';

import '../../../core/constant/color.dart';

class CustomButtonLanguage extends StatelessWidget {
  final String langText;
  final void Function() onPressed;
  const CustomButtonLanguage(
      {super.key, required this.langText, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 80),
      width: double.infinity,
      child: MaterialButton(
        onPressed: onPressed,
        color: AppColor.primaryColor,
        textColor: AppColor.white,
        child: Text(langText),
      ),
    );
  }
}
