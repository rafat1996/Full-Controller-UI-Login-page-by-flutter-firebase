import 'package:ecommerce/core/middleware/my-middleware.dart';
import 'package:ecommerce/view/screen/auth/forget%20password/forget-password.dart';
import 'package:ecommerce/view/screen/auth/forget%20password/reset-password.dart';
import 'package:ecommerce/view/screen/auth/forget%20password/success-reset-password.dart';
import 'package:ecommerce/view/screen/auth/forget%20password/verfiy-code.dart';
import 'package:ecommerce/view/screen/auth/login.dart';
import 'package:ecommerce/view/screen/auth/sign-up.dart';
import 'package:ecommerce/view/screen/auth/success-sign-up.dart';
import 'package:ecommerce/view/screen/auth/verfiy-code-signup.dart';
import 'package:ecommerce/view/screen/language.dart';
import 'package:ecommerce/view/screen/onboarding-screen.dart';
import 'package:get/get.dart';

import 'core/constant/route.dart';

List<GetPage<dynamic>>? routes = [
  GetPage(
      name: "/", page: () => const Language(), middlewares: [MyMiddleWare()]),
  GetPage(name: AppRoute.login, page: () => const Login()),
  GetPage(name: AppRoute.signUp, page: () => const SignUp()),
  GetPage(name: AppRoute.forgetPassword, page: () => const ForgetPassword()),
  GetPage(name: AppRoute.verfiyCode, page: () => const VerfiyCode()),
  GetPage(name: AppRoute.resetPassword, page: () => const ResetPassword()),
  GetPage(
      name: AppRoute.successResetPassword,
      page: () => const SuccessResetPassword()),
  GetPage(name: AppRoute.successSignUp, page: () => const SuccessSignUp()),
  GetPage(
      name: AppRoute.verfiyCodeSignUp, page: () => const VerfiyCodeSignUp()),
  GetPage(name: AppRoute.onboarding, page: () => const OnBoarding()),
];
