import 'package:flutter/material.dart';
import 'package:sampleproject/core/theme/Theme.dart';

class bodyText extends StatelessWidget {
  String bodyTitle;
  String bodyMessage;
  String sendedEmail;
  TextAlign? textAlign;
  bodyText({
    required this.bodyTitle,
    required this.bodyMessage,
    required this.sendedEmail,
    this.textAlign,
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          '$bodyTitle',
          style: Themes().headline2,
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          '$bodyMessage',
          style:
              Themes().headline2.copyWith(fontSize: 20, color: Colors.white70),
          textAlign: textAlign ?? TextAlign.center,
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          alignment: Alignment.center,
          width: double.infinity,
          child: Text(
            '$sendedEmail',
            style: Themes()
                .headline2
                .copyWith(fontSize: 20, color: Colors.white70),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
