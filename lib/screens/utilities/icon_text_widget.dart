import 'package:flutter/material.dart';
import 'package:franime/screens/utilities/apk_styles.dart';
import 'package:franime/screens/utilities/dimensions.dart';

// ignore: must_be_immutable
class IconTextWidget extends StatelessWidget {
  Color? color;
  final IconData icon;
  final String text;
  Size? size;

  IconTextWidget({
    Key? key,
    this.color = Colors.black,
    required this.icon,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
        child: Column(
          children: [
            Icon(
              icon,
              color: color,
              size: Dimensions.iconsize25 - 5,
            ),
            Text(
              text,
              style: Styles.headLineStyle3.copyWith(
                  fontSize: Dimensions.font12, fontWeight: FontWeight.normal),
            )
          ],
        ),
      ),
    ]);
  }
}
