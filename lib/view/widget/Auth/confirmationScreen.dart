import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sampleproject/background/verifyBackgroundDesgin.dart';
import 'package:sampleproject/controller/Auth/newAccountConfirmation_controller.dart';
import 'package:sampleproject/core/theme/Theme.dart';
import 'package:sampleproject/view/widget/Auth/appLogo.dart';
import 'package:sampleproject/view/widget/Auth/bodyText.dart';
import 'package:sampleproject/view/widget/Auth/bottomText.dart';
import 'package:sampleproject/view/widget/Auth/otpTextFaild.dart';

class confirmationScreen extends StatelessWidget {
  var otpTextFaildfunc;
  var clickHerefunc;
  String sendedEmail;
  String bodyTitle;
  confirmationScreen({
    required this.otpTextFaildfunc,
    required this.clickHerefunc,
    required this.sendedEmail,
    required this.bodyTitle,
  });
  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: verifyBackgroundDesgin(),
      child: Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            leading: IconButton(
              onPressed: () {
                Get.back();
              },
              icon: Icon(
                Icons.arrow_back,
                color: Colors.black,
              ),
            ),
            title: Text('Verification',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                )),
            elevation: 0,
            centerTitle: true,
            backgroundColor: Colors.transparent,
          ),
          body: Center(
            child: Padding(
              padding: EdgeInsets.all(40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  bodyText(
                    bodyTitle: '$bodyTitle',
                    bodyMessage: 'Please type the verification code \n sent to',
                    sendedEmail: '$sendedEmail',
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  otpTextFaild(
                    func: otpTextFaildfunc,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  bottomText(
                    title: 'To send the code again, ',
                    subTitle: 'click here',
                    function: clickHerefunc,
                    selectColor: Colors.white70,
                    fontSize: 20,
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
