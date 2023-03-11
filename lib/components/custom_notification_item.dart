import 'package:flare_ui/components/custom_circular_avatar.dart';
import 'package:flutter/material.dart';

class CustomNotificationItem extends StatelessWidget {
  final String imagePath;
  final String notification;
  final Function onTap;

  const CustomNotificationItem(
      {Key key,
      @required this.imagePath,
      @required this.notification,
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
          children: <Widget>[
            CustomCircleAvatar(
              imagePath: imagePath,
              size: 37,
            ),
            SizedBox(
              width: 15,
            ),
            Expanded(
              child: Text(
                notification,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
