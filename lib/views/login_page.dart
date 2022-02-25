import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _LoginState();
  }
}




class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0XFF3970C0),
      body: ListView(
          children: [
      Center(
      child: Padding(
      padding: const EdgeInsets.only(top: 50.0, left: 50),
      child: Image.asset('images/image_1.png'),
    ),),])
    );
  }
}
