import 'package:flutter/material.dart';
import 'package:sky_fly/components/text_field.dart';
import 'package:sky_fly/components/texts.dart';

void main() {
  runApp(const SkyFly());
}

class SkyFly extends StatefulWidget {
  const SkyFly({Key? key}) : super(key: key);

  @override
  _SkyFlyState createState() => _SkyFlyState();
}

class _SkyFlyState extends State<SkyFly> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          backgroundColor: const Color(0XFF3970C0),
          body: Column(
            children: <Widget>[
              const AuthTitleText(text: 'SkyFly', textColor: Color(0XFFFACBA0) , textFontSize: 40, textFontWeight: FontWeight.bold),

              const AuthTitleText(text: 'Welcome Onboard!', textColor: Color(0XFFFACBA0) , textFontSize: 20, textFontWeight: FontWeight.bold),

              const AuthTitleText(text: 'Let\'s get you started', textColor: Color(0XFFFACBA0) , textFontSize: 20, textFontWeight: FontWeight.bold),

              const AuthTitleText(text: 'Or', textColor: Color(0XFFFACBA0) , textFontSize: 10, textFontWeight: FontWeight.bold),

              const CustomTextField(hintText: 'Full name', obscureText: false),

              const CustomTextField(hintText: 'Email Address', obscureText: false),

              const CustomTextField(hintText: 'Enter Password', obscureText: true),

              const CustomTextField(hintText: 'Confirm Password', obscureText: true),
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: ElevatedButton(
                    onPressed: () {
                      print('tes');
                    },
                    child: const Text('Sign Up'),
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.orangeAccent)),
                  ),
                ),
              ),
              ElevatedButton(
                  onPressed: () {},
                  child: Row(
                    children: const [
                      Icon(Icons.login),
                      Text('Sign in with Google')
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
