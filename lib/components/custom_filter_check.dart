import 'package:flutter/material.dart';

import '../constants.dart';

class CustomFilterText extends StatefulWidget {
  final String text;
  final bool checked;

  const CustomFilterText({Key key, @required this.text, this.checked})
      : super(key: key);

  @override
  _CustomFilterTextState createState() => _CustomFilterTextState();
}

class _CustomFilterTextState extends State<CustomFilterText> {
  bool _checked;
  @override
  void initState() {
    (widget.checked != null) ? _checked = widget.checked : _checked = false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _checked = !_checked;
        });
      },
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 15,
          vertical: 5,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          border: Border.all(
              color: (_checked) ? kColorYellow : kColorGrey, width: 1),
          color: (_checked) ? kColorOrange : Colors.white,
        ),
        child: Center(
          child: Text(
            widget.text,
            style: TextStyle(
              color: (_checked) ? Colors.white : kColorGrey,
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ),
    );
  }
}
