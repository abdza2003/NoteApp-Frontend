import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sampleproject/controller/Auth/forgetPasswordConfirmation_Controller.dart';
import 'package:sampleproject/controller/Auth/newAccountConfirmation_controller.dart';
import 'package:sampleproject/view/widget/Auth/successfulConfirmation.dart';

class resetPasswordSuccessfully extends StatelessWidget {
  forgetPasswordConfirmationControllerImp forgetPassword = Get.find();
  @override
  Widget build(BuildContext context) {
    return successfulConfirmation(
      timeEndFunc: () {
        forgetPassword.goToLogin();
      },
      bodyMessage: 'Password changed \nsuccessfully',
    );
  }
}
