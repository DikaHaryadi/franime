import 'package:get/get.dart';

class Dimensions {
  static double screenWidth = Get.context!.width;
  static double screenHeight = Get.context!.height;

  //Karna Tinggi Hp Realme 7 itu 756 nah trs di bagi sesuai tinggi dan lebar aplikasi
  //yg pengen di buat(jangan lupa di buletin)
  static double pageViewContainer = screenHeight / 3.44;
  static double pageView = screenHeight / 2.36;
  static double pageViewTextContainer = screenHeight / 6.3;

  //Dimensions SizeBox/Gap
  //karna tinggi screen Realme7 itu 756 trs di bagi sama Sizebox/Gap yg mau di tetapkan
  // disini SizeBox/Gap nya menggunakan 10 magnkanya 756 di bagi 10
  static double height5 = screenHeight / 169;
  static double height10 = screenHeight / 84.4;
  static double height15 = screenHeight / 56.3;
  static double height20 = screenHeight / 42.2;
  static double height30 = screenHeight / 28.1;
  static double height40 = screenHeight / 21.1;
  static double height50 = screenHeight / 17;
  static double height60 = screenHeight / 14.1;

  //Dimension Width
  static double width5 = screenHeight / 169;
  static double width10 = screenHeight / 84.4;
  static double width15 = screenHeight / 56.3;
  static double width20 = screenHeight / 42.2;
  static double width30 = screenHeight / 28.1;
  static double width50 = screenHeight / 17;

  // Dimension dynamic untuk Text

  static double font12 = screenHeight / 70;
  static double font14 = screenHeight / 60;
  static double font17 = screenHeight / 49.6;
  static double font20 = screenHeight / 42.2;
  static double font25 = screenHeight / 33.76;

  // Dimension dynamic untuk Radius Containernya
  static double radius10 = screenHeight / 84.4;
  static double radius15 = screenHeight / 56.3;
  static double radius20 = screenHeight / 42.2;

  // Dimension untuk icon size
  static double iconsize25 = screenHeight / 33.76;
  static double iconsize16 = screenHeight / 52.75;

  //list View Ongoing Anime Size
  static double listViewImgSize = screenHeight / 7.67;
  static double listViewTextContSize = screenHeight / 7.03;

  //list View Complete Anime Size
  static double completeImgHeightSize = screenHeight / 16.9;
  static double completeImgWidthSize = screenWidth / 16.9;

  // Bottom Height
  static double bottomHeightBar = screenHeight / 7.56;
}
