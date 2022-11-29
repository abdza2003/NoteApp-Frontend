import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sampleproject/controller/Auth/newAccountConfirmation_controller.dart';
import 'package:sampleproject/view/widget/Auth/confirmationScreen.dart';

class newAccountConfirmation extends StatelessWidget {
  newAccountConfirmationControllerImp accountConfirmationControllerImp =
      Get.find();
  @override
  Widget build(BuildContext context) {
    return confirmationScreen(
      bodyTitle: 'CONFIRMATION',
      otpTextFaildfunc: (val) {
        accountConfirmationControllerImp.successfullyScreen();
      },
      clickHerefunc: () {},
      sendedEmail: 'abdza1355@gmail.com',
    );
  }
}
