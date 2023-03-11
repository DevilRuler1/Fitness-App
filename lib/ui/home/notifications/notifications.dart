import 'package:flare_ui/components/custom_notification_item.dart';
import 'package:flutter/material.dart';

class Notifications extends StatefulWidget {
  @override
  _NotificationsState createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications>
    with SingleTickerProviderStateMixin {

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Stack(
          children: <Widget>[
            Center(
              child: Padding(
                padding: EdgeInsets.only(top: 20),
                child: Text(
                  'Notifications',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 32,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10),
              child: Align(
                alignment: Alignment.centerRight,
                child: RotationTransition(
                  turns: AlwaysStoppedAnimation(-15 / 360),
                ),
              ),
            )
          ],
        ),
        SizedBox(
          height: 20,
        ),
        SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(top: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    CustomNotificationItem(
                    onTap: () {},
                    imagePath: 'assets/images/member_2.png',
                    notification:
                    'Abigal Gates accepted your appointment',
                    ),
                    CustomNotificationItem(
                    onTap: () {},
                    imagePath: 'assets/images/member_1.png',
                    notification:
                    'Natascha toros has rescheduled your yoga class',
                      ),
                  ],
                ),
            ),
        ),
      ],
    );
  }
}
