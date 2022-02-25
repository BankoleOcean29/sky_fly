import 'package:flutter/material.dart';

class AuthTitleText extends StatelessWidget{

  final String text;
  final Color textColor;
  final FontWeight textFontWeight;
  final double textFontSize;


  const AuthTitleText({Key? key, required this.text, required this.textColor, required this.textFontSize, required this.textFontWeight}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          fontSize: textFontSize,
          fontWeight: textFontWeight,
          color: textColor),
    );
  }
}