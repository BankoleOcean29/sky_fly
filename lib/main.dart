import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:sky_fly/screens/sign_up_page.dart';

void main() async {
 WidgetsFlutterBinding.ensureInitialized();
 await Firebase.initializeApp();
  runApp( const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: SkyFly()));
}

class SkyFly extends StatelessWidget {
   const SkyFly({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SignUp(),
    );
  }
}
