import 'package:flutter/material.dart';
import 'package:sampleproject/core/theme/Theme.dart';

class createNoteTextInput extends StatelessWidget {
  TextStyle fontStyle;
  String bodyText;
  String hintText;
  int? maxLines;
  TextInputType? inputType;
  createNoteTextInput({
    required this.fontStyle,
    required this.hintText,
    required this.bodyText,
    this.maxLines,
    this.inputType,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '$bodyText',
          style: Themes().headline2.copyWith(
                color: Colors.black,
                fontWeight: FontWeight.normal,
                fontSize: 25,
              ),
        ),
        TextField(
          keyboardType: inputType ?? TextInputType.multiline,
          style: fontStyle,
          decoration: InputDecoration(
            hintText: '$hintText',
            hintStyle: Themes().headline2.copyWith(
                  color: Colors.black45,
                  fontWeight: FontWeight.normal,
                  fontSize: 20,
                ),
            // contentPadding: EdgeInsets.symmetric(horizontal: 20),
            border: InputBorder.none,
          ),
          maxLines: maxLines ?? null,
        ),
      ],
    );
  }
}
