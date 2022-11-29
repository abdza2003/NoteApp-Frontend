import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sampleproject/background/verifyBackgroundDesgin.dart';
import 'package:sampleproject/controller/Auth/changePassword_Controller.dart';
import 'package:sampleproject/core/theme/Theme.dart';
import 'package:sampleproject/view/widget/Auth/myButton.dart';
import 'package:sampleproject/view/widget/Auth/inputTextFaild2.dart';

class changePasswordScreen extends StatelessWidget {
  TextEditingController textEditingController = new TextEditingController();
  TextEditingController textEditingController2 = new TextEditingController();
  changePasswordControllerImp controllerImp = Get.find();
  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: verifyBackgroundDesgin(),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        resizeToAvoidBottomInset: false,
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
          title: Text('New Password',
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
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 100,
              ),
              inputTextFaild2(
                iconData: Icons.lock_outline,
                labelText: 'New password',
                textEditingController: controllerImp.newPassword,
                bodyTitle: 'Enter New Password',
              ),
              inputTextFaild2(
                iconData: Icons.lock_outline,
                labelText: 'Confirm Password',
                textEditingController: controllerImp.confimPassword,
                bodyTitle: 'Confirm Password',
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                width: double.infinity,
                alignment: Alignment.center,
                child: myButton(
                  title: 'Save',
                  buttonColor: Colors.white,
                  Function: () {
                    controllerImp.savedChangePassword();
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
