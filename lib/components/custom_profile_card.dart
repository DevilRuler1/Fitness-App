import 'package:flutter/material.dart';

import '../constants.dart';
import 'custom_circular_avatar.dart';

class CustomProfileCard extends StatelessWidget {
  final String imagePath;
  final String name;
  final String description;
  final String event;

  const CustomProfileCard(
      {Key key,
      @required this.imagePath,
      @required this.name,
      @required this.description,
      @required this.event})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 147,
      width: 168,
      padding: EdgeInsets.fromLTRB(20, 20, 20, 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(4),
        boxShadow: [
          BoxShadow(
            color: Colors.grey[200],
            blurRadius: 4,
            spreadRadius: 4,
            offset: Offset(0, 3),
          ),
          BoxShadow(
            color: Colors.grey[200],
            blurRadius: 4,
            spreadRadius: 4,
            offset: Offset(0, -3),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              CustomCircleAvatar(
                imagePath: imagePath,
                size: 32,
              ),
              SizedBox(
                width: 10,
              ),
              Expanded(
                child: Text(
                  name,
                  style: TextStyle(
                    color: kColorGrey,
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            description,
            style: TextStyle(
              color: Colors.black,
              fontSize: 13,
              fontWeight: FontWeight.w400,
            ),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
          Expanded(
            child: Container(),
          ),
          Text(
            event,
            style: TextStyle(
              color: kColorOrange,
              fontSize: 10,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}
