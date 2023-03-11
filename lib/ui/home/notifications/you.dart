import 'package:flare_ui/components/custom_notification_item.dart';
import 'package:flutter/material.dart';

class You extends StatelessWidget {
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
    );
  }
}
