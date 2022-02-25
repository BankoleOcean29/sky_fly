import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final bool obscureText;

  const CustomTextField(
      {Key? key, required this.hintText, required this.obscureText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.only(top: 20, right: 20, left: 20),
        child: TextField(
          decoration: InputDecoration(
            hintText: hintText,
          ),
          obscureText: obscureText,
        ),
      ),
    );
  }
}
