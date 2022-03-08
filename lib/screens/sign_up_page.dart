import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:sky_fly/components/skyfly_icons.dart';
import 'package:sky_fly/screens/flight_selection.dart';
import '../components/auth_buttons.dart';
import '../components/text_field.dart';
import '../components/texts.dart';
import 'login_page.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  IconData? get google => null;

  final controllerFullName = TextEditingController();
  final controllerEmail = TextEditingController();
  final controllerPassword = TextEditingController();
  final controllerConfirmedPassword = TextEditingController();

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
              Center(
                  child: Padding(
                padding: EdgeInsets.only(top: 30.0),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20, right: 20, left: 20),
                    child: TextFormField(
                      controller: controllerFullName,
                      style: TextStyle(color: Color(0XFFFACBA0)),
                      decoration: InputDecoration(
                          hintText: 'full name',
                          enabledBorder: const UnderlineInputBorder(
                              borderSide: BorderSide(color: Color(0XFFFACBA0))
                          )
                      ),
                      obscureText: false,
                    ),
                  ),
                ),
              )),
              Center(
                child: Padding(
                  padding: EdgeInsets.only(top: 20.0),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 20, right: 20, left: 20),
                      child: TextFormField(
                        controller: controllerEmail,
                        style: TextStyle(color: Color(0XFFFACBA0)),
                        decoration: InputDecoration(
                            hintText: 'email',
                            enabledBorder: const UnderlineInputBorder(
                                borderSide: BorderSide(color: Color(0XFFFACBA0))
                            )
                        ),
                        obscureText: false,
                      ),
                    ),
                  )
                ),
              ),
              Center(
                child: Padding(
                  padding: EdgeInsets.only(top: 20.0),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 20, right: 20, left: 20),
                      child: TextFormField(
                        controller: controllerPassword,
                        style: TextStyle(color: Color(0XFFFACBA0)),
                        decoration: InputDecoration(
                            hintText: 'password',
                            enabledBorder: const UnderlineInputBorder(
                                borderSide: BorderSide(color: Color(0XFFFACBA0))
                            )
                        ),
                        obscureText: true,
                      ),
                    ),
                  )
                ),
              ),
              Center(
                child: Padding(
                  padding: EdgeInsets.only(top: 20.0),
                  child: CustomTextField(
                    skyController: controllerConfirmedPassword,
                      hintText: 'Confirm Password',
                      obscureText: true,
                      inputType: TextInputType.text),
                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 30.0),
                  child: SizedBox(
                    width: 367,
                    height: 52,
                    child: ElevatedButton(
                        onPressed: () async {
                          print('one');
                          await FirebaseAuth.instance.createUserWithEmailAndPassword(email: controllerEmail.text, password: controllerPassword.text);
                          Navigator.push(context, MaterialPageRoute(builder:(context) =>
                          const FlightSelectionPage()));
                        },
                        child:  Text('Sign Up', style: const TextStyle(color: Color(0XFF4188C6))),
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(const Color(0XFFFACBA0)),
                          shape: MaterialStateProperty.resolveWith<OutlinedBorder>((_) {
                            return RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20));}),
                        )
                    )
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
                      children: const [
                        Padding(
                          padding: EdgeInsets.only(left: 13.0),
                          child: Icon(
                            Customicon.googleLogo,
                            color: Colors.orange,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 21.0),
                          child: AuthTitleText(
                              text: 'Sign In Google',
                              textFontSize: 12,
                              textFontWeight: FontWeight.normal,
                              textColor: Color(0XFF4188C6)),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 100.0),
                child: Row(
                  children: [
                    const AuthTitleText(
                        text: 'Already have an account?',
                        textFontSize: 14,
                        textFontWeight: FontWeight.normal,
                        textColor: Color(0XFFFFFFFF)),
                    TextButton(
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Login()));
                          //Get.to(Login());
                        },
                        child: const AuthTitleText(
                            text: 'Login',
                            textColor: Color(0XFFFACBA0),
                            textFontSize: 14,
                            textFontWeight: FontWeight.normal))
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
