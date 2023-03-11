import 'package:flutter/material.dart';

class CustomCategory extends StatelessWidget {
  final Function onTap;
  final String imagePath;
  final String title;

  const CustomCategory(
      {Key key,
      @required this.onTap,
      @required this.imagePath,
      @required this.title})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.circular(4),
            child: Image.asset(
              imagePath,
              width: 99,
              height: 99,
              fit: BoxFit.fill,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            title,
            style: TextStyle(
              color: Colors.black,
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}
