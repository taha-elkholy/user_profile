import 'package:flutter/material.dart';

Map<int, Color> _color =
const {
  50:Color.fromRGBO(224,77,91, .1),
  100:Color.fromRGBO(224,77,91, .2),
  200:Color.fromRGBO(224,77,91, .3),
  300:Color.fromRGBO(224,77,91, .4),
  400:Color.fromRGBO(224,77,91, .5),
  500:Color.fromRGBO(224,77,91, .6),
  600:Color.fromRGBO(224,77,91, .7),
  700:Color.fromRGBO(224,77,91, .8),
  800:Color.fromRGBO(224,77,91, .9),
  900:Color.fromRGBO(224,77,91, 1),
};

MaterialColor customPink = MaterialColor(0xFFE04D5B, _color);