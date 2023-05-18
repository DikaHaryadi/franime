import 'package:franime/Controllers/ongoing_anime_controller.dart';
import 'package:franime/Data/api/api_client.dart';
import 'package:franime/Data/repository/ongoing_anime_repo.dart';
import 'package:franime/screens/utilities/app_constant.dart';
import 'package:get/get.dart';

Future<void> init() async {
  // api Client
  Get.lazyPut(() => ApiClient(appBaseUrl: AppConstants.BASE_URL));

  // Repository
  Get.lazyPut(() => OngoingAnimeRepo(apiClient: Get.find()));

  // controller
  Get.lazyPut(() => OngoingAnimeController(ongoingAnimeRepo: Get.find()));
}
