import 'package:flare_ui/constants.dart';
import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final Function onTap;
  final String imagePath;
  final String title;

  const CustomCard(
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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.circular(4),
            child: Image.asset(
              imagePath,
              width: 160,
              height: 160,
              fit: BoxFit.fill,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            title,
            style: TextStyle(
              decoration: TextDecoration.none,
              fontFamily: 'SFProDisplay',
              color: Colors.black,
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
            maxLines: 2,
          ),
        ],
      ),
    );
  }
}
