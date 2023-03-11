import 'package:flare_ui/components/custom_circular_avatar.dart';
import 'package:flare_ui/constants.dart';
import 'package:flutter/material.dart';

class CustomMessageItem extends StatelessWidget {
  final String imagePath;
  final String sender;
  final String message;
  final Function onTap;

  const CustomMessageItem(
      {Key key,
      @required this.imagePath,
      @required this.sender,
      @required this.message,
      @required this.onTap})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(
          vertical: 15,
          horizontal: 20,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            CustomCircleAvatar(
              imagePath: imagePath,
              size: 37,
            ),
            SizedBox(
              width: 15,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    sender,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    message,
                    style: TextStyle(
                      color: kColorGrey,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
