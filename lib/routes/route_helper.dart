import 'package:franime/screens/Home/home_page.dart';
import 'package:franime/screens/Ongoing/Ongoing%20Detail/ongoing_detail.dart';
import 'package:franime/screens/Ongoing/ongoing_container.dart';
import 'package:get/get.dart';

import '../screens/Complete Anime/Complete Detail/complete_anime_detail.dart';
import '../screens/Complete Anime/complete_container.dart';

class RouterHelper {
  static const String initial = "/";
  static const String ongoingAnime = "/ongoing-anime";
  static const String completeAnime = "/complete-anime";
  static const String ongoingAnimeDetail = "/ongoing-anime-detail";
  static const String completeAnimeDetail = "/complete-anime-detail";

  static String getInitial() => initial;
  static String getOngoingAnime() => ongoingAnime;
  static String getCompleteAnime() => completeAnime;
  static String getCompleteAnimeDetail() => completeAnimeDetail;
  static String getOngoingAnimeDetail() => ongoingAnimeDetail;

  static List<GetPage> routes = [
    GetPage(name: initial, page: () => const HomePage()),
    GetPage(
        name: ongoingAnime,
        page: (() => const OngoingSection()),
        // ini transisi page ke page ongoing anime detail
        transition: Transition.fadeIn),
    GetPage(
        name: ongoingAnimeDetail,
        page: (() => const OngoingAnimeDetail()),
        // ini transisi page ke page ongoing anime detail
        transition: Transition.fadeIn),
    GetPage(
        name: completeAnime,
        page: (() => const CompleteSection()),
        // ini transisi page ke page ongoing anime detail
        transition: Transition.fadeIn),
    GetPage(
        name: completeAnimeDetail,
        page: (() => const CompleteAnimeDetail()),
        // ini transisi page ke page ongoing anime detail
        transition: Transition.fadeIn)
  ];
}
