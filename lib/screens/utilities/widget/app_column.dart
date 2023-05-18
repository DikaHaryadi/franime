import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:franime/screens/utilities/dimensions.dart';
import 'package:franime/screens/utilities/small_text.dart';
import 'package:franime/screens/utilities/widget/big_text.dart';
import 'package:gap/gap.dart';

// ignore: must_be_immutable
class AppColumn extends StatelessWidget {
  final String judul;
  final double size;
  final String rating;
  final String episode;
  final String genre;
  const AppColumn({
    Key? key,
    required this.judul,
    required this.size,
    required this.rating,
    required this.episode,
    required this.genre,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BigText(text: judul, size: size),
        Row(
          children: [
            Wrap(
              children: List.generate(
                5,
                (index) => const Icon(
                  FluentSystemIcons.ic_fluent_star_filled,
                  color: Color(0xFFFFD700),
                  size: 15,
                ),
              ),
            ),
            Gap(Dimensions.width5),
            SmallText(text: rating),
          ],
        ),
        // Last Update Anime Ongoing
        Gap(Dimensions.height5),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SmallText(text: "Genre : "),
            Gap(Dimensions.height5),
            BigText(
              text: genre,
              size: Dimensions.font12,
              color: Colors.black.withOpacity(0.8),
            )
          ],
        ),
        Gap(Dimensions.height5),
        Row(
          children: [
            SmallText(text: "Episode :"),
            SmallText(text: episode),
          ],
        )
      ],
    );
  }
}
