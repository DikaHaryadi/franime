import 'package:flutter/cupertino.dart';
import 'package:franime/screens/utilities/dimensions.dart';

Color primary = const Color(0xFF687daf);

class Styles {
  static Color primaryColor = primary;
  static Color paraColor = const Color(0xFF8f837f);
  static Color textColor = const Color(0xFF3b3b3b);
  static Color bgColor = const Color(0xFF3b3b3b);
  static TextStyle textStyle = TextStyle(
      fontSize: Dimensions.font12,
      color: textColor,
      fontWeight: FontWeight.w300);
  static TextStyle headLineStyle1 = TextStyle(
      fontSize: Dimensions.font20,
      color: textColor,
      fontWeight: FontWeight.bold);
  static TextStyle headLineStyle2 = TextStyle(
      fontSize: Dimensions.font17,
      color: textColor,
      fontWeight: FontWeight.bold);
  static TextStyle headLineStyle3 = TextStyle(
      fontSize: Dimensions.font14,
      color: textColor,
      fontWeight: FontWeight.bold);
}
