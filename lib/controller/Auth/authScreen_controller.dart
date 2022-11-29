import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:sampleproject/core/constant/routes.dart';
import 'package:sampleproject/view/screen/Auth/authScreen.dart';

abstract class AuthScreenController extends GetxController {
  changeAuthMode();
  submitInfo();
  forgetPassword();
}

enum AuthMode { Login, SignUp }

class AuthScreenControllerImp extends AuthScreenController {
  late AuthMode authMode;
  late TextEditingController userNameController;
  late TextEditingController emailController;
  late TextEditingController passwordContoller;
  @override
  changeAuthMode() async {
    if (authMode == AuthMode.Login) {
      authMode = AuthMode.SignUp;
      clearItems();
    } else {
      authMode = AuthMode.Login;
      clearItems();
    }
  }

  @override
  submitInfo() {
    if (authMode == AuthMode.Login) {
      print('Login Pages');
      print('${userNameController.text}');
      print('${emailController.text}');
      print('${passwordContoller.text}');
      Get.offAllNamed(AppRoute.zoomDrawerScreen);
      clearItems();
    } else {
      Get.toNamed(AppRoute.newAccountConfirmation);
      clearItems();
      authMode = AuthMode.Login;
      update();
    }
  }

  void clearItems() {
    userNameController.clear();
    emailController.clear();
    passwordContoller.clear();
  }

  @override
  void onInit() {
    userNameController = TextEditingController();
    emailController = TextEditingController();
    passwordContoller = TextEditingController();
    authMode = AuthMode.Login;

    super.onInit();
  }

  @override
  void dispose() {
    userNameController.clear();
    emailController.clear();
    passwordContoller.clear();
    userNameController.dispose();
    emailController.dispose();
    passwordContoller.dispose();
    super.dispose();
  }

  @override
  forgetPassword() {
    Get.toNamed(AppRoute.resetPassword);
  }
}
