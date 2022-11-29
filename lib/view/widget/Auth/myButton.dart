import 'package:flutter/material.dart';
import 'package:sampleproject/core/constant/SizeConfig.dart';

class myButton extends StatelessWidget {
  String title;
  var Function;
  var buttonColor;
  myButton({required this.title, this.Function, this.buttonColor});
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.symmetric(
          horizontal: SizeConfig(context).heigthScreen / 10,
          vertical: SizeConfig(context).widthScreen / 25,
        ),
        primary: buttonColor ?? Colors.redAccent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        elevation: 10,
      ),
      onPressed: Function,
      child: Text(
        '$title',
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.normal,
          letterSpacing: 2.5,
          color: buttonColor != null ? Colors.black : Colors.white,
          fontFamily: 'Acme-Regular',
        ),
      ),
    );
  }
}
