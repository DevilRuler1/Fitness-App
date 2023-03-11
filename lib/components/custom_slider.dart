import 'package:flutter/material.dart';

import '../constants.dart';

class CustomSlider extends StatefulWidget {
  final double value;

  const CustomSlider({Key key, @required this.value}) : super(key: key);
  @override
  _CustomSliderState createState() => _CustomSliderState();
}

class _CustomSliderState extends State<CustomSlider> {
  double _value = 0.4;
  int distance = 4;
  @override
  void initState() {
    _value = widget.value;
    super.initState();
  }

  Widget _roundIndicator(String text, double size) {
    return FittedBox(
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 15,
          vertical: 5,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          border: Border.all(color: kColorYellow, width: 1),
          color: Colors.white,
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              color: kColorGrey,
              fontSize: size,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Center(
          child: _roundIndicator('$distance km', 14),
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          children: <Widget>[
            _roundIndicator('0', 10),
            SliderTheme(
              data: SliderThemeData(
                trackShape: CustomTrackShape(),
              ),
              child: Slider(
                activeColor: kColorOrange,
                onChanged: (value) {
                  setState(() {
                    _value = value;
                    distance = (value * 10).toInt();
                  });
                },
                value: _value,
              ),
            ),
            _roundIndicator('anywhere', 10),
          ],
        ),
      ],
    );
  }
}

class CustomTrackShape extends RoundedRectSliderTrackShape {
  Rect getPreferredRect({
    @required RenderBox parentBox,
    Offset offset = Offset.zero,
    @required SliderThemeData sliderTheme,
    bool isEnabled = false,
    bool isDiscrete = false,
  }) {
    final double trackHeight = sliderTheme.trackHeight;
    final double trackLeft = offset.dx;
    final double trackTop =
        offset.dy + (parentBox.size.height - trackHeight) / 2;
    final double trackWidth = parentBox.size.width;
    return Rect.fromLTWH(trackLeft, trackTop, trackWidth, trackHeight);
  }
}
