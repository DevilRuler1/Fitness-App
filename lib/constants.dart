import 'package:flutter/material.dart';

const kColorYellow = Color(0xffb6c649);
const kColorOrange = Color(0xff43200a);
const kColorGrey = Color(0xff9b9b9b);

const kContainerGradient = BoxDecoration(
  gradient: LinearGradient(
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
    colors: [
      kColorOrange,
      kColorYellow,
    ],
  ),
);

const kContainerGradientInverse = BoxDecoration(
  gradient: LinearGradient(
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
    colors: [
      kColorYellow,
      kColorOrange,
    ],
  ),
);
