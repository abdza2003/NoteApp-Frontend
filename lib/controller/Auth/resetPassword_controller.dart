import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:sampleproject/core/constant/routes.dart';

abstract class resetPasswordController extends GetxController {
  goToVerifyCode();
}

class resetPasswordControllerImp extends resetPasswordController {
  late TextEditingController emailController;
  @override
  goToVerifyCode() {
    Get.offNamed(AppRoute.forgetPasswordConfirmation);
    emailController.clear();
  }

  @override
  void onInit() {
    emailController = TextEditingController();
    super.onInit();
  }
}
