import 'package:flutter/material.dart';
import 'package:franime/Controllers/data_controllers.dart';
// import 'package:franime/Controllers/ongoing_anime_controller.dart';
// import 'package:franime/models/animes_model.dart';
import 'package:franime/routes/route_helper.dart';
import 'package:franime/screens/utilities/apk_styles.dart';
// import 'package:franime/screens/utilities/app_constant.dart';
import 'package:franime/screens/utilities/dimensions.dart';
import 'package:franime/screens/utilities/widget/app_column.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:dots_indicator/dots_indicator.dart';

class OngoingAnime extends StatefulWidget {
  const OngoingAnime({super.key});

  @override
  State<OngoingAnime> createState() => _OngoingAnimeState();
}

class _OngoingAnimeState extends State<OngoingAnime> {
  final DataController _controller = Get.put(DataController());
  PageController pageController = PageController(viewportFraction: 0.85);
  var _currPageValue = 0.0;
  // ignore: prefer_final_fields
  double _scaleFactor = 0.8;
  // ignore: prefer_final_fields
  double _height = Dimensions.pageViewContainer;

  @override
  void initState() {
    super.initState();
    pageController.addListener(() {
      setState(() {
        _currPageValue = pageController.page!;
      });
    });
  }

  @override
  void dispose() {
    super.dispose();
    pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(
            top: Dimensions.height40,
          ),
          padding: EdgeInsets.only(
              left: Dimensions.width10, right: Dimensions.width10),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Selamat Datang Di Franime",
                        style: Styles.headLineStyle3,
                      ),
                      Gap(Dimensions
                          .height5), //harus install dulu librarynya di pubsypec.yaml
                      Text(
                        "Selamat Menonton Anime",
                        style: Styles.headLineStyle1
                            .copyWith(color: Colors.black.withOpacity(0.4)),
                      ),
                    ],
                  ),
                  Container(
                    width: Dimensions.height50,
                    height: Dimensions.height50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(Dimensions.radius10),
                      image: const DecorationImage(
                          image: AssetImage("assets/images/megumin.jpg"),
                          fit: BoxFit.fitHeight),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),

        Gap(Dimensions.height20),
        Container(
          margin: EdgeInsets.only(
              left: Dimensions.width15, right: Dimensions.width15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Ongoing",
                style: Styles.headLineStyle2,
              ),
              InkWell(
                  onTap: () {
                    Get.toNamed(RouterHelper.getOngoingAnime());
                  },
                  child: Row(
                    children: [
                      Text(
                        "View all",
                        style: Styles.textStyle
                            .copyWith(color: Styles.primaryColor),
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        color: Styles.primaryColor,
                        size: Dimensions.iconsize16 - 6,
                      )
                    ],
                  )),
            ],
          ),
        ),
        Gap(Dimensions.height10),
        //Slider Section timer load data from json
        // ignore: sized_box_for_whitespace
        Obx(
          () {
            if (_controller.loading == false) {
              return Container(
                  width: 100,
                  child: const CircularProgressIndicator(
                    color: Colors.black,
                  ));
            } else {
              return _listOngoingSection();
            }
          },
        ),
        // GetBuilder<OngoingAnimeController>(builder: (ongoingAnime) {
        //   return Container(
        //     height: Dimensions.pageView,
        //     child: GestureDetector(
        //       onTap: () {
        //         Get.toNamed(RouterHelper.getOngoingAnimeDetail());
        //       },
        //       child: PageView.builder(
        //         controller: pageController,
        //         itemCount: ongoingAnime.ongoingAnimeList.length,
        //         itemBuilder: (context, position) {
        //           return _buildPageItem(
        //               position, ongoingAnime.ongoingAnimeList[position]);
        //         },
        //       ),
        //     ),
        //   );
        // }),
        // // Dots
        // GetBuilder<OngoingAnimeController>(builder: (ongoingAnimes) {
        //   return DotsIndicator(
        //     dotsCount: ongoingAnimes.ongoingAnimeList.isEmpty
        //         ? 1
        //         : ongoingAnimes.ongoingAnimeList.length,
        //     position: _currPageValue,
        //     decorator: DotsDecorator(
        //       activeColor: Colors.black,
        //       size: const Size.square(9.0),
        //       activeSize: const Size(18.0, 9.0),
        //       activeShape: RoundedRectangleBorder(
        //           borderRadius: BorderRadius.circular(5.0)),
        //     ),
        //   );
        // }),
        DotsIndicator(
          dotsCount: 5,
          position: _currPageValue,
          decorator: DotsDecorator(
            activeColor: Colors.black,
            size: const Size.square(9.0),
            activeSize: const Size(18.0, 9.0),
            activeShape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0)),
          ),
        ),
        Container(
          margin: EdgeInsets.only(
              left: Dimensions.width15, right: Dimensions.width15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Complete Anime",
                style: Styles.headLineStyle2,
              ),
              InkWell(
                  onTap: () {
                    Get.toNamed(RouterHelper.getCompleteAnime());
                  },
                  child: Row(
                    children: [
                      Text(
                        "View all",
                        style: Styles.textStyle
                            .copyWith(color: Styles.primaryColor),
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        color: Styles.primaryColor,
                        size: Dimensions.iconsize16 - 6,
                      )
                    ],
                  )),
            ],
          ),
        ),
        Obx(() {
          if (_controller.loading == false) {
            return Container(
              width: 100,
              child: const CircularProgressIndicator(
                color: Colors.black,
              ),
            );
          } else {
            return _listCompleteSection();
          }
        }),
      ],
    );
  }

  Widget _buildPageItem(
    int index,
    // DataModel ongoingAnime,
  ) {
    // ignore: unnecessary_new
    Matrix4 matrix = new Matrix4.identity();
    if (index == _currPageValue.floor()) {
      var currScale = 1 - (_currPageValue - index) * (1 - _scaleFactor);
      var currTrans = _height * (1 - currScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currTrans, 0);
    } else if (index == _currPageValue.floor() + 1) {
      var currScale =
          _scaleFactor + (_currPageValue - index + 1) * (1 - _scaleFactor);
      var currTrans = _height * (1 - currScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1);
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currTrans, 0);
    } else if (index == _currPageValue.floor() - 1) {
      var currScale = 1 - (_currPageValue - index) * (1 - _scaleFactor);
      var currTrans = _height * (1 - currScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1);
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currTrans, 0);
    } else {
      var currScale = 0.8;
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, _height * (1 - _scaleFactor) / 2, 1);
    }

    return Transform(
      transform: matrix,
      child: Stack(
        children: [
          GestureDetector(
            onTap: () {
              Get.toNamed(RouterHelper.getOngoingAnime());
            },
            child: Container(
              height: Dimensions.pageViewContainer,
              margin: EdgeInsets.only(
                  left: Dimensions.width5, right: Dimensions.width5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimensions.radius10),
                color: index.isEven
                    ? const Color(0xFF69c5df)
                    : const Color(0Xdd9294cc),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(_controller.list[index]["img"]),
                  // image: NetworkImage(_controller.list[index]['img']),
                  // image: NetworkImage(
                  //     AppConstants.BASE_URL + "/uploads/" + ongoingAnime.img!),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: Dimensions.pageViewTextContainer,
              margin: EdgeInsets.only(
                  left: Dimensions.width30,
                  right: Dimensions.width30,
                  bottom: Dimensions.height30),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimensions.radius15),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      color: Colors.black.withOpacity(0.3),
                      offset: const Offset(0, 5),
                      spreadRadius: 1),
                ],
              ),
              child: Container(
                padding: EdgeInsets.only(
                    top: Dimensions.height5,
                    left: Dimensions.width15,
                    right: Dimensions.width15),
                // Deskripsi Anime Ongoing
                child: Column(
                  children: [
                    // AppColumn(
                    //     judul: ongoingAnime.title!,
                    //     size: Dimensions.font17,
                    //     rating: ongoingAnime.rating!,
                    //     episode: ongoingAnime.episode!,
                    //     genre: ongoingAnime.genres!),
                    AppColumn(
                        judul: _controller.list[index]["indoVer"],
                        size: Dimensions.font17,
                        rating: _controller.list[index]["rating"],
                        episode: _controller.list[index]["episode"],
                        genre: _controller.list[index]["genres"]),
                    // AppColumn(
                    //   judul: _controller.list[index].title,
                    //   size: Dimensions.font20,
                    //   rating: _controller.list[index].rating,
                    //   episode: _controller.list[index].episode,
                    //   genre: _controller.list[index].genres,
                    // )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  _listOngoingSection() {
    // ignore: sized_box_for_whitespace
    return Container(
      height: Dimensions.pageView,
      child: GestureDetector(
        onTap: () {
          Get.toNamed(RouterHelper.getOngoingAnimeDetail());
        },
        child: PageView.builder(
          controller: pageController,
          itemCount: _controller.list.length,
          itemBuilder: (context, position) {
            return _buildPageItem(position);
          },
        ),
      ),
    );
  }

  _listCompleteSection() {
    return ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: _controller.list.length,
        itemBuilder: (_, index) {
          return Container(
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
                  borderRadius: BorderRadius.circular(Dimensions.radius15),
                  color: Colors.white38,
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(_controller.list[index]["img"])),
                ),
                //       image: NetworkImage(
                //           "http://franime.bydk.id/uploads/${_controller.list[index].img}")),
                // ),
              ),
              // text container
              GestureDetector(
                onTap: () {
                  Get.toNamed(RouterHelper.getOngoingAnimeDetail());
                },
                child: Container(
                  height: Dimensions.listViewTextContSize,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(Dimensions.radius15),
                          bottomRight: Radius.circular(Dimensions.radius15)),
                      color: Colors.white),
                  child: Padding(
                    padding: EdgeInsets.only(
                      top: Dimensions.height10,
                      left: Dimensions.width10,
                      right: Dimensions.width10,
                    ),
                    child: AppColumn(
                        judul: _controller.list[index]["indoVer"],
                        size: Dimensions.font17,
                        rating: _controller.list[index]["rating"],
                        episode: _controller.list[index]["episode"],
                        genre: _controller.list[index]["genres"]),
                    // child: AppColumn(
                    //     judul: _controller.list[index].title,
                    //     size: Dimensions.font17,
                    //     rating: _controller.list[index].rating,
                    //     episode: _controller.list[index].episode,
                    //     genre: _controller.list[index].genres),
                  ),
                ),
              ),
            ]),
          );
        });
  }
}
