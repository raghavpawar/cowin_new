import 'package:cowin_new/main.dart';
import 'package:flutter/material.dart';

final primaryColor = Color(0xFF00408A);
final secondaryColor = Color(0xFF00ADB5);
final boldTextColor = Color(0xFF001833);

final height = MediaQuery.of(navigatorKey.currentContext!).size.height;
final width = MediaQuery.of(navigatorKey.currentContext!).size.width;

TextStyle poppins({
  double? fontSize,
  FontWeight? fontWeight,
  Color? color,
  bool styleOnly = false,
  FontStyle? fontStyle,
}) {
  if (styleOnly) return TextStyle(fontFamily: 'Poppins');
  return TextStyle(
    fontFamily: 'Poppins',
    fontSize: fontSize,
    fontWeight: fontWeight,
    color: color,
    fontStyle: fontStyle,
  );
}

TextStyle roboto({
  double? fontSize,
  FontWeight? fontWeight,
  Color? color,
  bool styleOnly = false,
}) {
  if (styleOnly) return TextStyle(fontFamily: 'Roboto');
  return TextStyle(
    fontFamily: 'Roboto',
    fontSize: fontSize,
    fontWeight: fontWeight,
    color: color,
  );
}

class MyScrollBehavior extends ScrollBehavior {
  @override
  Widget buildViewportChrome(
      BuildContext context, Widget child, AxisDirection axisDirection) {
    return child;
  }
}

String capitalize(String s) {
  if (s.isEmpty) return s;
  String retval = s.split(' ').map((str) {
    str = str.substring(0, 1).toUpperCase() + str.substring(1);
    return str;
  }).join(' ');
  return retval;
}

double fontSize(BuildContext context, {String size = 'medium'}) {
  double screenWidth = MediaQuery.of(context).size.width;
  switch (size) {
    case 'large':
      return screenWidth / 10;
    case 'mediumLarge':
      return screenWidth / 14;
    case 'medium':
      return screenWidth / 17;
    case 'small':
      return screenWidth / 25;
    case 'extraSmall':
      return screenWidth / 30;
    case 'xxs':
      return screenWidth / 35;
    case 'xxxs':
      return screenWidth / 47;
    default:
      return screenWidth / 17;
  }
}
