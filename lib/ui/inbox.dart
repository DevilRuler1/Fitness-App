import 'package:flare_ui/components/custom_message_item.dart';
import 'package:flutter/material.dart';

class Inbox extends StatefulWidget {
  @override
  _InboxState createState() => _InboxState();
}

class _InboxState extends State<Inbox> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            ),
          ),
          title: Text(
            'Inbox',
            style: TextStyle(
              color: Colors.black,
              fontSize: 32,
              fontWeight: FontWeight.w400,
            ),
          ),
          centerTitle: true,
          actions: <Widget>[
            IconButton(
              onPressed: () {},
              icon: Image.asset(
                'assets/images/icon_new_message.png',
                width: 23,
                height: 20,
                fit: BoxFit.fill,
              ),
            ),
          ],
        ),
        body: Padding(
          padding: EdgeInsets.only(top: 40),
          child: Column(
            children: <Widget>[
              CustomMessageItem(
                onTap: () {
                  Navigator.of(context).pushNamed('/chat');
                },
                imagePath: 'assets/images/member_1.png',
                sender: 'Abigal Gates',
                message:
                    'Hello! Are you free to come to the yoga class this morning?',
              ),
              CustomMessageItem(
                onTap: () {},
                imagePath: 'assets/images/member_3.png',
                sender: 'Natascha toros',
                message: 'I see this new Vegan café. We must chaeck it out!',
              ),
              CustomMessageItem(
                onTap: () {},
                imagePath: 'assets/images/member_4.png',
                sender: 'Olivia Sweyne',
                message:
                    'Yes! I agree. The team and I can’t wait to see the final version.',
              ),
              CustomMessageItem(
                onTap: () {},
                imagePath: 'assets/images/member_2.png',
                sender: 'Tim Hendrix',
                message:
                    'Haha! I didn’t see you in the audience. Let’s catch up soon.',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
