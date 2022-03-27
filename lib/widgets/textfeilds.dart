import 'package:flutter/material.dart';

class textfeild extends StatelessWidget {
  var label;
  final String? Function(String?)? validator;

  textfeild({
    Key? key,
    required this.validator,
    required this.label,
    required this.controler,
  }) : super(key: key);

  final TextEditingController controler;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
          labelText: label,
          labelStyle: TextStyle(
            fontSize: 18,
          )),
      controller: controler,
      validator: validator,
    );
  }
}
