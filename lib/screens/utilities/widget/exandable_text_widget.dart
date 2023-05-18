import 'package:flutter/material.dart';
import 'package:franime/screens/utilities/apk_styles.dart';
import 'package:franime/screens/utilities/dimensions.dart';
import 'package:franime/screens/utilities/small_text.dart';
import 'package:franime/screens/utilities/widget/big_text.dart';
import 'package:gap/gap.dart';

class ExpandableTextWidget extends StatefulWidget {
  final String text;

  const ExpandableTextWidget({Key? key, required this.text}) : super(key: key);

  @override
  State<ExpandableTextWidget> createState() => _ExpandableTextWidgetState();
}

class _ExpandableTextWidgetState extends State<ExpandableTextWidget> {
  late String firstHalf;
  late String secondHalf;

  final String synopsis = "Synopsis";

  bool hiddenText = true;

  double textHeight = Dimensions.screenHeight / 5.04;

  @override
  void initState() {
    super.initState();
    if (widget.text.length > textHeight) {
      firstHalf = widget.text.substring(0, textHeight.toInt());
      secondHalf =
          widget.text.substring(textHeight.toInt() + 1, widget.text.length);
    } else {
      firstHalf = widget.text;
      secondHalf = "";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: secondHalf.isEmpty
          ? SmallText(
              color: Styles.paraColor, size: Dimensions.font14, text: firstHalf)
          : Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                BigText(text: synopsis, size: Dimensions.font14),
                Gap(Dimensions.height5),
                SmallText(
                    height: 1.3,
                    color: Styles.paraColor,
                    size: Dimensions.font14,
                    text: hiddenText
                        ? ("$firstHalf...")
                        : (firstHalf + secondHalf)),
                InkWell(
                  onTap: () {
                    setState(() {
                      hiddenText = !hiddenText;
                    });
                  },
                  child: Row(children: [
                    SmallText(
                      text: "Show more",
                      color: Styles.primaryColor,
                    ),
                    Icon(
                      hiddenText ? Icons.arrow_drop_down : Icons.arrow_drop_up,
                      color: Styles.primaryColor,
                    )
                  ]),
                )
              ],
            ),
    );
  }
}
