import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:sampleproject/core/constant/routes.dart';

abstract class changePasswordController extends GetxController {
  savedChangePassword();
}

class changePasswordControllerImp extends changePasswordController {
  late TextEditingController newPassword;
  late TextEditingController confimPassword;
  @override
  savedChangePassword() {
    Get.offNamed(AppRoute.resetPasswordSuccessfully);
    clearText();
  }

  clearText() {
    newPassword.clear();
    confimPassword.clear();
  }

  @override
  void onInit() {
    newPassword = TextEditingController();
    confimPassword = TextEditingController();
    super.onInit();
  }
}
