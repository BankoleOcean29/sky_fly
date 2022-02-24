import 'package:flutter/material.dart';

void main() {
  runApp(const SkyFly());
}

class SkyFly extends StatelessWidget {
  const SkyFly({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue[200],
    child: Column(
      children: const [
        Padding(
          padding: EdgeInsets.only(top: 20.0, left: 30),
          child: Text('SkyFly'),
        ),
      ],
    ),);
  }
}


