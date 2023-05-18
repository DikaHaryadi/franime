import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:franime/routes/route_helper.dart';
import 'package:franime/screens/utilities/apk_styles.dart';
import 'package:franime/screens/utilities/dimensions.dart';
import 'package:franime/screens/utilities/icon_text_widget.dart';
import 'package:franime/screens/utilities/information_anime.dart';
import 'package:franime/screens/utilities/small_text.dart';
import 'package:franime/screens/utilities/widget/app_column.dart';
import 'package:franime/screens/utilities/widget/app_icon.dart';
import 'package:franime/screens/utilities/widget/big_text.dart';
import 'package:franime/screens/utilities/widget/exandable_text_widget.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

class OngoingAnimeDetail extends StatelessWidget {
  const OngoingAnimeDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            //ini matiin tanda arrow back
            automaticallyImplyLeading: false,
            toolbarHeight: 80,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    Get.toNamed(RouterHelper.getInitial());
                  },
                  child: const AppIcon(icon: Icons.clear),
                ),
                const AppIcon(
                    icon: FluentSystemIcons.ic_fluent_report_warning_filled),
              ],
            ),
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(20),
              child: Container(
                width: double.maxFinite,
                padding: EdgeInsets.only(
                    bottom: Dimensions.height5, top: Dimensions.height5),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(Dimensions.radius20),
                      topRight: Radius.circular(Dimensions.radius20)),
                ),
                child: Padding(
                  padding: EdgeInsets.only(
                      left: Dimensions.width20, right: Dimensions.width20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      BigText(text: "Overlord"),
                      AppIcon(
                        iconSize: Dimensions.iconsize25,
                        icon: FluentSystemIcons.ic_fluent_play_circle_regular,
                        iconColor: Colors.white,
                        backgroundColor: Colors.orange,
                      )
                    ],
                  ),
                ),
              ),
            ),
            pinned: true,
            backgroundColor: Colors.black,
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                "assets/images/megumin.jpg",
                width: double.maxFinite,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                Container(
                    margin: EdgeInsets.only(
                        left: Dimensions.width20,
                        right: Dimensions.width20,
                        bottom: Dimensions.height10),
                    child: const InformationAnime(
                      japanVer: "japanVer",
                      engVer: "engVer",
                      type: "type",
                      episodes: "episodes",
                      status: "status",
                      premiered: "premiered",
                      broadCast: "broadCast",
                      produser: "produser",
                      lisensor: "lisensor",
                      studios: "studios",
                      source: "source",
                      genres: "genres",
                      themes: "themes",
                      duration: "duration",
                      rating: "rating",
                      lastUpdate: "lastUpdate",
                    )),
                Container(
                  margin: EdgeInsets.only(
                      left: Dimensions.width20, right: Dimensions.width20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconTextWidget(
                        icon: FluentSystemIcons.ic_fluent_share_ios_filled,
                        text: "Shear",
                        color: Colors.black,
                      ),
                      IconTextWidget(
                        icon: FluentSystemIcons.ic_fluent_favorites_filled,
                        text: "My Fav",
                        color: Colors.black,
                      ),
                    ],
                  ),
                ),
                Gap(Dimensions.height5),
                Container(
                  margin: EdgeInsets.only(
                      left: Dimensions.width20, right: Dimensions.width20),
                  child: const ExpandableTextWidget(
                    text:
                        "But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasureBut I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure",
                  ),
                ),
                Gap(Dimensions.height10),
                Container(
                  margin: EdgeInsets.only(
                      left: Dimensions.width20, right: Dimensions.width20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      BigText(
                        text: "Episodes",
                        size: Dimensions.font17,
                      ),
                      InkWell(
                        onTap: () {
                          Get.toNamed(RouterHelper.getCompleteAnimeDetail());
                        },
                        child: SmallText(
                          text: "View all",
                          color: Styles.primaryColor,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SliverToBoxAdapter(
            child: ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Get.toNamed(RouterHelper.getOngoingAnime());
                    },
                    child: Container(
                      margin: EdgeInsets.only(
                          left: Dimensions.width15,
                          right: Dimensions.width15,
                          bottom: Dimensions.height10),
                      child: Row(children: [
                        // image section
                        Container(
                          width: Dimensions.listViewImgSize,
                          height: Dimensions.listViewImgSize,
                          decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.circular(Dimensions.radius15),
                            color: Colors.white38,
                            image: const DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage("assets/images/megumin.jpg")),
                          ),
                        ),
                        // text container
                        Expanded(
                          child: Container(
                            height: Dimensions.listViewTextContSize,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    topRight:
                                        Radius.circular(Dimensions.radius15),
                                    bottomRight:
                                        Radius.circular(Dimensions.radius15)),
                                color: Colors.white),
                            child: Padding(
                              padding: EdgeInsets.only(
                                top: Dimensions.height5,
                                left: Dimensions.width10,
                                right: Dimensions.width10,
                              ),
                              child: AppColumn(
                                  judul: "Tokyo Ghoul",
                                  size: Dimensions.font17,
                                  rating: "9.7",
                                  episode: "10",
                                  genre: "Action, Crime, Supranatural"),
                            ),
                          ),
                        ),
                      ]),
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }
}
