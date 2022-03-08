import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:sky_fly/screens/sign_up_page.dart';
import '../components/auth_buttons.dart';
import '../components/skyfly_icons.dart';
import '../components/text_field.dart';
import '../components/texts.dart';
import 'flight_selection.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final controllerEmail = TextEditingController();
  final controllerPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: const Color(0XFF4188C6),
        body:
        SafeArea(
          child: ListView(children: [
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
                       obscureText: false,
                     ),
                   ),
                 )
               ),
             ),
             TextButton(onPressed: (){},
                 child: const Padding(
                   padding: EdgeInsets.only(left: 242.0),
                   child: Text('Forgot Password',
                   style: TextStyle(color: Colors.white),),
                 )
             ),
             Center(
               child: Padding(
                 padding: const EdgeInsets.only(top: 39.0),
                 child: SizedBox(
                   width: 367,
                   height: 52,
                   child: AuthButtons(
                     onPressed: () {
                       FirebaseAuth.instance.signInWithEmailAndPassword(email: controllerEmail.text, password: controllerPassword.text);
                       Navigator.push(context, MaterialPageRoute(builder:(context) =>
                        const FlightSelectionPage()));
                     },
                     buttonText: 'Log In',
                   ),
                 ),
               ),
          ),
             const Center(
               child: Padding(
                 padding: EdgeInsets.all(8.0),
                 child: AuthTitleText(
                     text: 'OR',
                     textColor: Color(0XFFFFFFFFF),
                     textFontSize: 16,
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
                      text: 'Don\'t have an account?',
                      textFontSize: 14,
                      textFontWeight: FontWeight.normal,
                      textColor: Color(0XFFFFFFFF)),
                  TextButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => SignUp()));
                        //Get.to(Login());
                      },
                      child: const AuthTitleText(
                          text: 'Signup',
                          textColor: Color(0XFFFACBA0),
                          textFontSize: 14,
                          textFontWeight: FontWeight.normal))
                ],
              ),
            )

           ]),
        ));
  }
}
