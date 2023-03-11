import 'package:flare_ui/components/custom_circular_avatar.dart';
import 'package:flare_ui/components/custom_profile_card.dart';
import 'package:flare_ui/constants.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  Widget _statistic(String title, value) {
    return Column(
      children: <Widget>[
        Text(
          value,
          style: TextStyle(
            color: Colors.black,
            fontSize: 14,
            fontWeight: FontWeight.w400,
          ),
        ),
        Text(
          title,
          style: TextStyle(
            color: kColorGrey,
            fontSize: 13,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Stack(
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              //avatar column
              Padding(
                padding: EdgeInsets.only(top: 10),
                child: Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      CircleAvatar(
                        backgroundColor: Colors.transparent,
                        radius: 34,
                        child: Image.asset(
                          'assets/images/avatar.png',
                          fit: BoxFit.fill,
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        'Angelina Olive',
                        style: TextStyle(
                          fontSize: 17,
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Text(
                        'Nike fitness instructor',
                        style: TextStyle(
                          fontSize: 13,
                          color: kColorGrey,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  'Contact Info',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 32,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                height: 200,
                child: ListView(
                  padding:
                      EdgeInsets.only(left: 20, top: 15, bottom: 15, right: 5),
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  children: <Widget>[
                    // Write info here
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
