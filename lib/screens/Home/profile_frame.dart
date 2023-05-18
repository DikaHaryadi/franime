import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:franime/screens/utilities/dimensions.dart';
import 'package:franime/screens/utilities/profile_franime_detail.dart';
import 'package:franime/screens/utilities/widget/big_text.dart';
import 'package:franime/screens/utilities/widget/exandable_text_widget.dart';
import 'package:gap/gap.dart';

class ProfileFrame extends StatelessWidget {
  const ProfileFrame({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          // sliver appBar
          SliverAppBar(
            automaticallyImplyLeading: false,
            backgroundColor: Colors.transparent,
            pinned: true,
            expandedHeight: 300,
            toolbarHeight: 50,
            flexibleSpace: FlexibleSpaceBar(
              title: BigText(
                text: "Franime Information",
                size: Dimensions.font14,
                color: Colors.white,
              ),
              centerTitle: true,
              background: Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: const AssetImage("assets/images/megumin.jpg"),
                        fit: BoxFit.cover,
                        colorFilter: ColorFilter.mode(
                            Colors.black.withOpacity(0.15), BlendMode.darken),
                      ),
                    ),
                  ),
                  Positioned.fill(
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                      child: Container(color: Colors.transparent),
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.only(top: Dimensions.height40),
                    child: Column(
                      children: [
                        Container(
                          height: 120,
                          width: 120,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                                image:
                                    AssetImage("assets/images/fotosampul.png"),
                                fit: BoxFit.cover),
                            shape: BoxShape.circle,
                          ),
                        ),
                        Gap(Dimensions.height5),
                        BigText(
                          text: "Franime",
                          color: Colors.white,
                          size: Dimensions.font17,
                        ),
                        Gap(Dimensions.height5),
                        BigText(
                          text: "Streaming & Download Anime",
                          color: Colors.white,
                          size: Dimensions.font14,
                        ),
                        Gap(Dimensions.height5),
                        BigText(
                          text: "Jika menemukan bug",
                          color: Colors.white,
                          size: Dimensions.font14,
                        ),
                        Gap(Dimensions.height5),
                        BigText(
                          text: "harap segera lapor kepada admin Franime",
                          color: Colors.white,
                          size: Dimensions.font14,
                        )
                      ],
                    ),
                  ),
                ],
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
                        top: Dimensions.height20,
                        bottom: Dimensions.height5),
                    child: const ProfileFranimeDetail(
                        title1: "About Us",
                        title2: "Cara Streaming & Download",
                        text1: "Franime Diciptakan oleh Muhammad Dika Haryadi",
                        text2: "Streaming & Download dengan cara bla bla bla")),
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
              ],
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(
                      left: Dimensions.width20,
                      right: Dimensions.width20,
                      bottom: Dimensions.height15),
                  child: const ExpandableTextWidget(
                      text:
                          "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical LatinContrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of de Finibus Bonorum et Malorum (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum,Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of de Finibus Bonorum et Malorum (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of de Finibus Bonorum et Malorum (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum,"),
                )
              ],
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Center(
                  child: BigText(
                    text: "Sosial Media Franime",
                    size: Dimensions.font14,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                      left: Dimensions.width15, right: Dimensions.width15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CircleAvatar(
                        radius: 25,
                        backgroundColor: Colors.white,
                        child: InkWell(
                          onTap: () {},
                          child: Icon(
                            FontAwesomeIcons.facebookF,
                            size: Dimensions.iconsize25,
                            color: const Color(0xFF3b5998),
                          ),
                        ),
                      ),
                      CircleAvatar(
                        radius: 25,
                        backgroundColor: Colors.white,
                        child: InkWell(
                          onTap: () {},
                          child: Icon(
                            FontAwesomeIcons.instagram,
                            size: Dimensions.iconsize25,
                            color: const Color(0xFFfb3958),
                          ),
                        ),
                      ),
                      CircleAvatar(
                        radius: 25,
                        backgroundColor: Colors.white,
                        child: InkWell(
                          onTap: () {},
                          child: Icon(
                            FontAwesomeIcons.appStore,
                            size: Dimensions.iconsize25,
                            color: const Color(0xFF04d7fc),
                          ),
                        ),
                      ),
                      CircleAvatar(
                        radius: 25,
                        backgroundColor: Colors.white,
                        child: InkWell(
                          onTap: () {},
                          child: Icon(
                            FontAwesomeIcons.googlePlay,
                            size: Dimensions.iconsize25,
                            color: const Color(0xFF3Bccff),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Gap(Dimensions.height10),
                Container(
                  margin: EdgeInsets.only(bottom: Dimensions.height10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Center(
                        child: BigText(
                          text: "Support Franime",
                          size: Dimensions.font12,
                        ),
                      ),
                      Gap(Dimensions.height5),
                      Center(
                        child: BigText(
                          text:
                              "dengan cara Rate 5 Star pada AppStore & PlayStore",
                          size: Dimensions.font12,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
