import 'package:flutter/material.dart';

import '../constants.dart';

class UnderlineTextField extends StatelessWidget {
  final String hint;
  final TextInputType keyboardType;
  final bool obscureText;

  const UnderlineTextField(
      {Key key, @required this.hint, this.keyboardType, this.obscureText})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText ?? false,
      keyboardType: keyboardType ?? TextInputType.text,
      cursorColor: kColorOrange,
      cursorWidth: 1.5,
      decoration: InputDecoration(
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: Colors.grey[300],
            width: 1,
          ),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: kColorOrange,
            width: 1,
          ),
        ),
        hintText: hint,
        hintStyle: TextStyle(
          color: Colors.grey[350],
          fontSize: 16,
        ),
      ),
    );
  }
}
