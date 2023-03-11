import 'package:flare_ui/components/custom_circular_avatar.dart';
import 'package:flare_ui/constants.dart';
import 'package:flutter/material.dart';

class Chat extends StatelessWidget {
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
            'Abigal',
            style: TextStyle(
              color: Colors.black,
              fontSize: 30,
              fontWeight: FontWeight.w400,
            ),
          ),
          centerTitle: true,
          actions: <Widget>[
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.more_horiz,
                color: Colors.black,
              ),
            ),
          ],
        ),
        body: Column(
          children: <Widget>[
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    children: <Widget>[
                      MessageItem(
                        send: false,
                        message:
                            'Apologies to all aquarians but I roll with pescetarians',
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      MessageItem(
                        send: true,
                        message: 'Vegans and vegetarians?',
                      ),
                    ],
                  ),
                ),
              ),
            ),
            //footer
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(color: Colors.grey[200], width: 1),
                ),
              ),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: TextField(
                      cursorColor: kColorYellow,
                      cursorWidth: 1.5,
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50),
                          borderSide: BorderSide(
                            color: Colors.grey[200],
                            width: 1,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50),
                          borderSide: BorderSide(
                            color: kColorYellow,
                            width: 1,
                          ),
                        ),
                        contentPadding: EdgeInsets.symmetric(
                          vertical: 12,
                          horizontal: 20,
                        ),
                        hintText: 'Write message...',
                        hintStyle: TextStyle(
                          color: Colors.grey[200],
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Container(
                    width: 32,
                    height: 32,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: kColorYellow,
                    ),
                    child: GestureDetector(
                      onTap: () {},
                      child: Icon(
                        Icons.keyboard_arrow_up,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class MessageItem extends StatelessWidget {
  final bool send;
  final String message;

  const MessageItem({Key key, @required this.send, @required this.message})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment:
          !send ? MainAxisAlignment.start : MainAxisAlignment.end,
      children: <Widget>[
        Visibility(
          visible: !send,
          child: CustomCircleAvatar(
            imagePath: 'assets/images/member_1.png',
            size: 32,
          ),
        ),
        Flexible(
          child: Container(
            margin: EdgeInsets.only(
              left: send ? 100 : 5,
              right: send ? 5 : 100,
            ),
            padding: EdgeInsets.symmetric(
              vertical: 10,
              horizontal: 15,
            ),
            decoration: send
                ? BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: Colors.grey[200],
                  )
                : kContainerGradient.copyWith(
                    borderRadius: BorderRadius.circular(4),
                  ),
            child: SelectableText(
              message,
              style: TextStyle(
                color: send ? Colors.black : Colors.white,
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
              textAlign: TextAlign.start,
            ),
          ),
        ),
        Visibility(
          visible: send,
          child: CustomCircleAvatar(
            imagePath: 'assets/images/avatar.png',
            size: 32,
          ),
        ),
      ],
    );
  }
}
