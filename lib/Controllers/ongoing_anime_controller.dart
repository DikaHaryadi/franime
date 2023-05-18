import 'package:franime/Data/repository/ongoing_anime_repo.dart';
import 'package:franime/models/animes_model.dart';
import 'package:get/get.dart';

class OngoingAnimeController extends GetxController {
  final OngoingAnimeRepo ongoingAnimeRepo;
  OngoingAnimeController({required this.ongoingAnimeRepo});
  List<dynamic> _ongoingAnimeList = [];
  List<dynamic> get ongoingAnimeList => _ongoingAnimeList;

  bool _isLoaded = false;
  bool get isLoaded => _isLoaded;

  Future<void> getOngoingAnimeList() async {
    Response response = await ongoingAnimeRepo.getOngoingAnimeList();
    if (response.statusCode == 200) {
      print("get Content");
      _ongoingAnimeList = [];
      _ongoingAnimeList.addAll(Anime.fromJson(response.body).data);
      print(_ongoingAnimeList);
      _isLoaded = true;
      update();
    } else {}
  }
}
