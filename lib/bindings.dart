import 'package:ecommerce/controller/auth/forget-password-controller.dart';
import 'package:ecommerce/controller/auth/login-controller.dart';
import 'package:ecommerce/controller/auth/reset-password-controller.dart';
import 'package:ecommerce/controller/auth/signup-controller.dart';
import 'package:get/get.dart';

class MyBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SignUpControllerImp(), fenix: true);
    Get.lazyPut(() => LoginControllerImp(), fenix: true);
    Get.lazyPut(() => ForgetPasswordControllerImp(), fenix: true);
    Get.lazyPut(() => ResetPasswordControllerImp(), fenix: true);
  }
}
