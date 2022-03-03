import 'package:flutter/material.dart';
import 'package:sky_fly/views/flight_selection.dart';
import 'package:sky_fly/views/login_page.dart';
import 'package:sky_fly/views/sign_up_page.dart';
import 'package:sky_fly/views/test.dart';

void main() {
  runApp( const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: FlightSelectionPage()));
}

class SkyFly extends StatelessWidget {
   const SkyFly({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SignUp(),
    );
  }
}
