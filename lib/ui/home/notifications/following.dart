import 'package:flutter/material.dart';
import 'package:flare_ui/components/custom_notification_item.dart';

class Following extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.only(top: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            CustomNotificationItem(
              onTap: () {},
              imagePath: 'assets/images/member_3.png',
              notification:
              'Olivia Sweyne was at Vegan essential in Shoreditch',
            ),
            CustomNotificationItem(
              onTap: () {},
              imagePath: 'assets/images/member_4.png',
              notification:
              'Miranda Hollister like The Natrual Vegan shop near you',
            ),
            CustomNotificationItem(
              onTap: () {},
              imagePath: 'assets/images/member_5.png',
              notification: 'Tim Hendrix liked a location you were at recently',
            ),
          ],
        ),
      ),
    );
  }
}

