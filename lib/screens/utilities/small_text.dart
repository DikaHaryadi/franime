import 'package:flutter/material.dart';
import 'package:franime/screens/utilities/dimensions.dart';

// ignore: must_be_immutable
class SmallText extends StatelessWidget {
  Color? color;
  FontWeight? fontWeight;
  final String text;
  double size;
  double height;
  SmallText(
      {super.key,
      this.color = const Color(0xFF000000),
      required this.text,
      this.size = 12,
      this.height = 1.2});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          color: color,
          fontSize: size == 12 ? Dimensions.font12 : size,
          height: height),
    );
  }
}
