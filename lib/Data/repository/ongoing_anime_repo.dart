import 'package:franime/Data/api/api_client.dart';
import 'package:franime/screens/utilities/app_constant.dart';
import 'package:get/get.dart';

class OngoingAnimeRepo extends GetxService {
  final ApiClient apiClient;

  OngoingAnimeRepo({required this.apiClient});

  Future<Response> getOngoingAnimeList() async {
    return await apiClient.getData(AppConstants.ONGOING_ANIME_URL);
  }
}
