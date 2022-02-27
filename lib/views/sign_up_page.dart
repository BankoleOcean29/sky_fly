import 'package:flutter/material.dart';
import '../components/auth_buttons.dart';
import '../components/text_field.dart';
import '../components/texts.dart';
import 'login_page.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          backgroundColor: const Color(0XFF3970C0),
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

              const Center(child: Padding(
                padding: EdgeInsets.only(top: 30.0),
                child: CustomTextField(hintText: 'Full name', obscureText: false),
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
                    // width: MediaQuery.of(context).size.width,
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
                      textColor: Color(0XFFFACBA0),
                      textFontSize: 18,
                      textFontWeight: FontWeight.bold),
                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 10.0, right: 40, left: 40),
                  child: ElevatedButton(
                      onPressed: () {},
                      child: Row(
                        children: const [
                          Icon(Icons.login, size: 25,),
                          Text('Sign in with Google'),

                        ],
                      )),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 100.0),
                child: Row(
                  children: [
                    AuthTextButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (_) => const Login()));
                    },
                      text: ('login'),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

}