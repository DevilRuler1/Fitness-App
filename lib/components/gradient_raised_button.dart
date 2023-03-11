import 'package:flutter/material.dart';

import '../constants.dart';

class GradientRaisedButton extends StatelessWidget {
  final Function onPressed;
  final String title;

  const GradientRaisedButton(
      {Key key, @required this.onPressed, @required this.title})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      padding: EdgeInsets.all(0),
      onPressed: onPressed,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(4),
      ),
      elevation: 6,
      child: Container(
        width: double.infinity,
        decoration: kContainerGradient.copyWith(
          borderRadius: BorderRadius.circular(4),
        ),
        padding: EdgeInsets.symmetric(
          vertical: 20,
          horizontal: 5,
        ),
        child: Center(
          child: Text(
            title,
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ),
    );
  }
}
