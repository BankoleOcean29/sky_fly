import 'package:flutter/material.dart';
import '../components/auth_buttons.dart';
import '../components/text_field.dart';
import '../components/texts.dart';
import 'login_page.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  IconData? get google => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Scaffold(
          backgroundColor: const Color(0XFF4188C6),
          body: ListView(
            children: [
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
                  padding: EdgeInsets.only(top: 25.0),
                  child: AuthTitleText(
                      text: 'Welcome Onboard!',
                      textColor: Color(0XFFFACBA0),
                      textFontSize: 24,
                      textFontWeight: FontWeight.bold),
                ),
              ),
              const Center(
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: AuthTitleText(
                      text: 'Let\'s get you started',
                      textColor: Color(0XFFFACBA0),
                      textFontSize: 14,
                      textFontWeight: FontWeight.bold),
                ),
              ),
              const Center(
                  child: Padding(
                padding: EdgeInsets.only(top: 30.0),
                child:
                    CustomTextField(hintText: 'Full name', obscureText: false),
              )),
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
                      hintText: 'Enter Password', obscureText: true),
                ),
              ),
              const Center(
                child: Padding(
                  padding: EdgeInsets.only(top: 20.0),
                  child: CustomTextField(
                      hintText: 'Confirm Password', obscureText: true),
                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 30.0),
                  child: SizedBox(
                    width: 367,
                    height: 52,
                    child: AuthButtons(
                      onPressed: () {},
                      buttonText: 'Sign Up',
                    ),
                  ),
                ),
              ),
              const Center(
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: AuthTitleText(
                      text: 'OR',
                      textColor: Colors.white,
                      textFontSize: 18,
                      textFontWeight: FontWeight.bold),
                ),
              ),
              Center(
                child: Expanded(
                  child: Container(
                    color: Colors.white,
                    width: 188,
                    height: 47,
                    child: Row(
                      children: [
                        Icon(google),
                        const Text('Sign In Google'),
                      ],
                    ),
                  ),
                ),
              ),
              Row(
                children: [
                  const Text('Already have an account?'),
                  TextButton(onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder:(context) =>
                    Login()));
                  //Get.to(Login());
                  },
                child: const Text('Login', style: TextStyle(color: Colors.brown,),),
                  )],
              )
            ],
          ),
        ),
      ),
    );
  }
}
