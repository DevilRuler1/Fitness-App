import 'package:flare_ui/constants.dart';
import 'package:flutter/material.dart';

class CustomCircleAvatar extends StatelessWidget {
  final String imagePath;
  final double size;

  const CustomCircleAvatar(
      {Key key, @required this.imagePath, @required this.size})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            color: Colors.grey[300],
            offset: Offset(0, size / 10),
            blurRadius: size / 5,
          ),
          BoxShadow(
            color: Colors.grey[300],
            offset: Offset(0, -size / 10),
            blurRadius: size / 5,
          ),
        ],
      ),
      child: Image.asset(
        imagePath,
        fit: BoxFit.fill,
      ),
    );
  }
}
