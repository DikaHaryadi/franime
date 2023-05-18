import 'package:flutter/material.dart';
import 'package:franime/screens/utilities/dimensions.dart';
import 'package:franime/screens/utilities/small_text.dart';
import 'package:franime/screens/utilities/widget/big_text.dart';
import 'package:gap/gap.dart';

class InformationAnime extends StatelessWidget {
  final String alternativeTitles = "Alternative Titles";
  final String japanVer;
  final String engVer;
  final String informationAnime = "Information";
  final String type;
  final String episodes;
  final String status;
  final String premiered;
  final String broadCast;
  final String produser;
  final String lisensor;
  final String studios;
  final String source;
  final String genres;
  final String themes;
  final String duration;
  final String rating;
  final String lastUpdate;

  const InformationAnime({
    Key? key,
    required this.japanVer,
    required this.engVer,
    required this.type,
    required this.episodes,
    required this.status,
    required this.premiered,
    required this.broadCast,
    required this.produser,
    required this.lisensor,
    required this.studios,
    required this.source,
    required this.genres,
    required this.themes,
    required this.duration,
    required this.rating,
    required this.lastUpdate,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BigText(text: alternativeTitles, size: Dimensions.font14),
        Gap(Dimensions.height5),
        Row(
          children: [
            SmallText(text: "Japanese : "),
            SmallText(text: japanVer),
          ],
        ),
        Gap(Dimensions.height5),
        Row(
          children: [
            SmallText(text: "English : "),
            SmallText(text: engVer),
          ],
        ),
        Gap(Dimensions.height10),
        BigText(
          text: informationAnime,
          size: Dimensions.font14,
        ),
        Gap(Dimensions.height5),
        Row(
          children: [SmallText(text: "Episodes : "), SmallText(text: episodes)],
        ),
        Gap(Dimensions.height5),
        Row(
          children: [SmallText(text: "Status : "), SmallText(text: status)],
        ),
        Gap(Dimensions.height5),
        Row(
          children: [
            SmallText(text: "Premiered : "),
            SmallText(text: premiered)
          ],
        ),
        Gap(Dimensions.height5),
        Row(
          children: [
            SmallText(text: "BroadCast : "),
            SmallText(text: broadCast)
          ],
        ),
        Gap(Dimensions.height5),
        Row(
          children: [SmallText(text: "Produser : "), SmallText(text: produser)],
        ),
        Gap(Dimensions.height5),
        Row(
          children: [SmallText(text: "Lisensor : "), SmallText(text: lisensor)],
        ),
        Gap(Dimensions.height5),
        Row(
          children: [SmallText(text: "Studios : "), SmallText(text: studios)],
        ),
        Gap(Dimensions.height5),
        Row(
          children: [SmallText(text: "Source : "), SmallText(text: source)],
        ),
        Gap(Dimensions.height5),
        Row(
          children: [SmallText(text: "Genre : "), SmallText(text: genres)],
        ),
        Gap(Dimensions.height5),
        Row(
          children: [SmallText(text: "Themes : "), SmallText(text: themes)],
        ),
        Gap(Dimensions.height5),
        Row(
          children: [SmallText(text: "Duration : "), SmallText(text: duration)],
        ),
        Gap(Dimensions.height5),
        Row(
          children: [SmallText(text: "Rating : "), SmallText(text: rating)],
        ),
        Gap(Dimensions.height5),
        Row(
          children: [
            SmallText(text: "Last Update : "),
            SmallText(text: lastUpdate)
          ],
        ),
      ],
    );
  }
}
