import 'package:flutter/material.dart';

import '../components/text_field.dart';
import '../components/texts.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0XFF3970C0),
        body: ListView(children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 50.0, left: 50),
              child: Image.asset('images/image_1.png'),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 1.0),
            child: Center(
              child: AuthTitleText(
                  text: 'SkyFly',
                  textColor: Color(0XFFFACBA0),
                  textFontSize: 50,
                  textFontWeight: FontWeight.bold),
            ),
          ),
          const Center(
            child: Padding(
              padding: EdgeInsets.only(top: 20.0),
              child: CustomTextField(
                  hintText: 'Email Address', obscureText: false),
            ),
          ),
          const Center(
            child: Padding(
              padding: EdgeInsets.only(top: 20.0),
              child: CustomTextField(
                  hintText: 'Password', obscureText: false),
            ),
          ),
        ]),

      ),
    ));
  }
}
