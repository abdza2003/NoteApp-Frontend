import 'package:flutter/material.dart';
import 'package:sampleproject/core/constant/SizeConfig.dart';

class inputTextFaild extends StatelessWidget {
  IconData iconData;
  String labelText;
  TextEditingController textEditingController;
  Color? color;
  inputTextFaild({
    required this.iconData,
    required this.labelText,
    required this.textEditingController,
    this.color,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: SizeConfig(context).heigthScreen / 40,
      ),
      child: TextFormField(
        controller: textEditingController,
        cursorColor: Colors.red,
        decoration: InputDecoration(
          fillColor: color ?? Colors.transparent,
          filled: true,
          hintText: 'Enter ${labelText.toLowerCase()} here .',
          labelText: color == null ? '$labelText' : null,
          floatingLabelStyle: const TextStyle(color: Colors.redAccent),
          prefixIcon: Icon(
            iconData,
            color: Colors.redAccent,
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.redAccent,
            ),
          ),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              // width: 2, //<-- SEE HERE
              color: color ?? Colors.black54,
            ),
          ),
        ),
      ),
    );
  }
}
