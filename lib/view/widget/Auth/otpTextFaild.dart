// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';

class otpTextFaild extends StatelessWidget {
  var func;
  otpTextFaild({
    Key? key,
    required this.func,
  });

  @override
  Widget build(BuildContext context) {
    return OtpTextField(
      fieldWidth: 50,
      borderRadius: BorderRadius.circular(200),
      borderWidth: 40,
      fillColor: Colors.white10,
      borderColor: Colors.red,
      focusedBorderColor: Colors.white30,
      enabledBorderColor: Colors.white10,
      cursorColor: Colors.white,
      textStyle: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
      ),
      // clearText: true,
      filled: true,
      numberOfFields: 5,
      disabledBorderColor: Colors.red,
      showFieldAsBox: true,
      onSubmit: func,
    );
  }
}
