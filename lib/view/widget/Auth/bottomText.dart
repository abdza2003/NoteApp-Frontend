import 'package:flutter/material.dart';

class bottomText extends StatefulWidget {
  String title;
  String subTitle;
  var function;
  Color? selectColor;
  double? fontSize;
  bottomText({
    required this.title,
    required this.subTitle,
    required this.function,
    this.selectColor,
    this.fontSize,
  });
  @override
  State<bottomText> createState() => _bottomTextState();
}

class _bottomTextState extends State<bottomText> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          '${widget.title}',
          style: TextStyle(
            fontSize: widget.fontSize ?? 15,
            color: widget.selectColor ?? Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        GestureDetector(
          onTap: widget.function,
          child: Text(
            '${widget.subTitle}',
            style: TextStyle(
              fontSize: widget.fontSize ?? 15,
              decoration: TextDecoration.underline,
              color: widget.selectColor ?? Colors.redAccent,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
