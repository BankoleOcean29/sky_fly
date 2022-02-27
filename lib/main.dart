import 'package:flutter/material.dart';
import 'package:sky_fly/views/login_page.dart';
import 'package:sky_fly/views/sign_up_page.dart';

void main() {
  runApp(const SkyFly());
}

class SkyFly extends StatelessWidget {
  const SkyFly({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Login();
  }
}
