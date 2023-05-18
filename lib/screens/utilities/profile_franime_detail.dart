import 'package:flutter/material.dart';
import 'package:franime/screens/utilities/dimensions.dart';
import 'package:franime/screens/utilities/small_text.dart';
import 'package:franime/screens/utilities/widget/big_text.dart';
import 'package:gap/gap.dart';

class ProfileFranimeDetail extends StatelessWidget {
  final String title1;
  final String title2;
  final String text1;
  final String text2;

  const ProfileFranimeDetail(
      {Key? key,
      required this.title1,
      required this.title2,
      required this.text1,
      required this.text2})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            BigText(
              text: title1,
              size: Dimensions.font14,
            ),
            Gap(Dimensions.width10),
            SmallText(text: "- Franime")
          ],
        ),
        SmallText(text: text1),
        Gap(Dimensions.height5),
        Row(
          children: [
            BigText(
              text: title2,
              size: Dimensions.font14,
            ),
            Gap(Dimensions.width10),
            SmallText(text: "- Anime")
          ],
        ),
        SmallText(text: text2)
      ],
    );
  }
}
