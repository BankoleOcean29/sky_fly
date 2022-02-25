import 'package:flutter/material.dart';

class AuthButtons extends StatelessWidget{
  final void Function() onPressed;
  final String buttonText;
  const AuthButtons({Key? key, required this.buttonText, required this.onPressed}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child:  Text(buttonText, style: const TextStyle(color: Color(0XFF4188C6))),
      style: ButtonStyle(
          backgroundColor:
          MaterialStateProperty.all(const Color(0XFFFACBA0)),
      )
    );
  }
}

class AuthTextButton extends StatelessWidget{
  final void Function() onPressed;
  final String text;

  const AuthTextButton({Key? key, required this.onPressed, required this.text}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return TextButton(onPressed: onPressed, child: const Text('login'));
  }
}