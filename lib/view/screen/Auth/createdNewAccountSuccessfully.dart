import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sampleproject/controller/Auth/newAccountConfirmation_controller.dart';
import 'package:sampleproject/view/widget/Auth/successfulConfirmation.dart';

class createdNewAccountSuccessfully extends StatelessWidget {
  newAccountConfirmationControllerImp confirmationControllerImp = Get.find();
  @override
  Widget build(BuildContext context) {
    return successfulConfirmation(
      timeEndFunc: () {
        confirmationControllerImp.goToLogin();
      },
      bodyMessage: 'Account successfully \n created',
    );
  }
}
