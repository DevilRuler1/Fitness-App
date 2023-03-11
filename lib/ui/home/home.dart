import 'package:flare_ui/constants.dart';
import 'file:///D:/Work/My%20Fiverr/Fitness%20App/lib/ui/All_Services.dart';
import 'file:///D:/Work/My%20Fiverr/Fitness%20App/lib/ui/All_Trainers.dart';
import 'package:flutter/material.dart';
import 'home_page.dart';
import 'map.dart';
import 'notifications/notifications.dart';
import 'profile.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int selectedIndex = 0;

  final pages = [
    HomePage(),
    TheMap(),
    Notifications(),
    Profile(),
  ];

  Widget navBarItem(String name, String text, int index) {
    return InkWell(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 5),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Image.asset(
              selectedIndex == index
                  ? 'assets/images/${name}_active.png'
                  : 'assets/images/$name.png',
              width: 25,
              height: 25,
              fit: BoxFit.fill,
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              text,
              style: TextStyle(
                fontSize: 12,
                color: selectedIndex == index ? kColorOrange : Colors.grey,
                fontWeight: FontWeight.w400,
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: pages.elementAt(selectedIndex),
        bottomNavigationBar: BottomAppBar(
          elevation: 0,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Expanded(
                flex: 1,
                child: navBarItem('icon_home', 'Home', 0),
              ),
              Expanded(
                flex: 1,
                child: navBarItem('icon_notification', 'Notifications', 2),
              ),
              Expanded(
                flex: 1,
                child: navBarItem('icon_profile', 'Profile', 3),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
