import 'package:ecommerce/core/constant/imageAssets.dart';
import 'package:flutter/material.dart';

class LogoAuth extends StatelessWidget {
  const LogoAuth({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(AppImageAssets.logo,height: 200,);
  }
}
