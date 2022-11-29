import 'package:flutter/material.dart';
import 'package:sampleproject/core/constant/SizeConfig.dart';
import 'package:sampleproject/core/theme/Theme.dart';

class inputTextFaild2 extends StatelessWidget {
  IconData iconData;
  String labelText;
  TextEditingController textEditingController;
  Color? color;
  String? bodyTitle;
  Color? fontColor;
  inputTextFaild2({
    required this.iconData,
    required this.labelText,
    required this.textEditingController,
    this.color,
    this.bodyTitle,
    this.fontColor,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: SizeConfig(context).heigthScreen / 40,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '$bodyTitle',
            style: Themes().headline2.copyWith(
                color: fontColor ?? Colors.white60,
                fontSize: 20,
                fontWeight: FontWeight.normal),
          ),
          SizedBox(
            height: 10,
          ),
          TextFormField(
            controller: textEditingController,
            cursorColor: Colors.red,
            decoration: InputDecoration(
              floatingLabelBehavior: FloatingLabelBehavior.always,
              fillColor: Colors.white,
              filled: true,
              hintText: '$labelText',
              floatingLabelStyle: const TextStyle(color: Colors.redAccent),
              prefixIcon: Icon(
                iconData,
                color: Colors.redAccent,
              ),
              focusColor: Colors.red,
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.redAccent,
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.redAccent,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
