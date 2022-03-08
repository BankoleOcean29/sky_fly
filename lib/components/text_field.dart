import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  final String hintText;
  final bool obscureText;
  final TextInputType inputType;
  final TextEditingController skyController;


  const CustomTextField(
      {Key? key, required this.hintText, required this.obscureText, required this.inputType, required this.skyController})
      : super(key: key);

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  late String textValue;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.only(top: 20, right: 20, left: 20),
        child: TextFormField(
          style: TextStyle(color: Color(0XFFFACBA0)),
          keyboardType: widget.inputType,
          decoration: InputDecoration(
            hintText: widget.hintText,
            enabledBorder: const UnderlineInputBorder(
              borderSide: BorderSide(color: Color(0XFFFACBA0))
            )
          ),
          obscureText: widget.obscureText,
        ),
      ),
    );
  }
}



class RouteTextField extends StatefulWidget {
  const RouteTextField({Key? key, required this.hintText, required this.icon}) : super(key: key);

  final String hintText;
  final Icon icon;


  get inputType => null;

  @override
  _RouteTextFieldState createState() => _RouteTextFieldState();
}

class _RouteTextFieldState extends State<RouteTextField> {
  get hintText => null;

  IconData? get icon => null;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: TextStyle(color: Color(0XFFFACBA0)),
      keyboardType: widget.inputType,
      decoration: InputDecoration(
        prefixIcon: Icon(icon, color: Color(0XFFFACBA0),),
          hintText: widget.hintText,
          enabledBorder: const UnderlineInputBorder(
              borderSide: BorderSide(color: Color(0XFFFACBA0))
          )
      ),
    );
  }
}




