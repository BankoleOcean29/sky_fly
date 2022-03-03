import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final bool obscureText;

  const CustomTextField(
      {Key? key, required this.hintText, required this.obscureText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.only(top: 20, right: 20, left: 20),
        child: TextFormField(
          style: TextStyle(color: Color(0XFFFACBA0)),
          decoration: InputDecoration(
            hintText: hintText,
          ),
          obscureText: obscureText,
        ),
      ),
    );
  }
}
class RouteTextField extends StatefulWidget {
  const RouteTextField({Key? key, required this.hintText, required this.icon}) : super(key: key);

  final String hintText;
  final Icon icon;

  @override
  _RouteTextFieldState createState() => _RouteTextFieldState();
}

class _RouteTextFieldState extends State<RouteTextField> {
  get hintText => null;

  IconData? get icon => null;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextFormField(
        style: TextStyle(),
        decoration: InputDecoration(
          hintText: hintText,
          prefixIcon: Icon(icon)
        ),

      ),

    );
  }
}

