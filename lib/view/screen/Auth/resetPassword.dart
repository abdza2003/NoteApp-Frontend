import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sampleproject/background/verifyBackgroundDesgin.dart';
import 'package:sampleproject/controller/Auth/resetPassword_controller.dart';
import 'package:sampleproject/core/theme/Theme.dart';
import 'package:sampleproject/view/widget/Auth/bodyText.dart';
import 'package:sampleproject/view/widget/Auth/inputTextFaild.dart';
import 'package:sampleproject/view/widget/Auth/inputTextFaild2.dart';
import 'package:sampleproject/view/widget/Auth/myButton.dart';

class resetPassword extends StatelessWidget {
  TextEditingController textEditingController = new TextEditingController();
  resetPasswordControllerImp resetPaawController = Get.find();
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
          title: Text('Forgot Password',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              )),
          elevation: 0,
          centerTitle: true,
          backgroundColor: Colors.transparent,
        ),
        body: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              bodyText(
                bodyTitle: 'Forget Password ?! ',
                bodyMessage:
                    'Please enter your email address to \n receive a verification code',
                sendedEmail: '',
                textAlign: TextAlign.left,
              ),
              inputTextFaild2(
                textEditingController: resetPaawController.emailController,
                iconData: Icons.email_outlined,
                labelText: 'E-mail',
                color: Colors.white,
                bodyTitle: 'Email Address',
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                width: double.infinity,
                alignment: Alignment.center,
                child: myButton(
                  title: 'Send Email',
                  buttonColor: Colors.white,
                  Function: () {
                    resetPaawController.goToVerifyCode();
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
