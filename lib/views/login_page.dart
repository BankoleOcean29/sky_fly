import 'package:flutter/material.dart';
import '../components/auth_buttons.dart';
import '../components/text_field.dart';
import '../components/texts.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);


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
             TextButton(onPressed: (){},
                 child: const Padding(
                   padding: EdgeInsets.only(left: 242.0),
                   child: Text('Forgot Password',
                   style: TextStyle(color: Colors.white),),
                 )
             ),
             Center(
               child: Padding(
                 padding: const EdgeInsets.only(top: 30.0),
                 child: SizedBox(
                   child: AuthButtons(
                     onPressed: () {},
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
       Row(
           children: [
           ElevatedButton(onPressed: (){
               print("Hi");
               // Navigator.push(context, MaterialPageRoute(builder: (_) => const Login()));
             },
               child: const Text('login'),
             )
           ],
       )
           ]),
        ));
  }
}
