// import 'package:franime/Data/services/data_services.dart';
// import 'package:franime/models/animes_model.dart';
// import 'package:get/get.dart';

// class DataController extends GetxController {
//   // RxList<DataModel> list = <DataModel>[].obs;
//   var list = [].obs;

//   final service = new DataServices();

//   var _loading = false.obs;

//   get loading => _loading.value;

//   @override
//   void onInit() {
//     _loadData();
//     super.onInit();
//   }

//   // function mylist favorite anime
//   // get newListFavAnime {
//   //   list.where((e) => e.status == 0 ? false : true).map((e) => e);
//   // }

//   _loadData() async {
//     _loading.value = false;
//     try {
//       var info = service.getUsers();
//       list.addAll(await info);
//     } catch (e) {
//       print("Error");
//       print(e);
//     } finally {
//       _loading.value = true;
//     }
//   }
// }
import 'package:franime/Data/services/data_services.dart';
// import 'package:franime/models/animes_model.dart';
import 'package:get/get.dart';

class DataController extends GetxController {
  // RxList<DataModel> list = <DataModel>[].obs;
  var list = [].obs;

  final service = new DataServices();

  var _loading = false.obs;

  get loading => _loading.value;

  @override
  void onInit() {
    _loadData();
    super.onInit();
  }

  // function mylist favorite anime
  // get newListFavAnime {
  //   list.where((e) => e.status == 0 ? false : true).map((e) => e);
  // }

  _loadData() async {
    _loading.value = false;
    try {
      var info = service.getUsers();
      list.addAll(await info);
    } catch (e) {
      print("Error");
      print(e);
    } finally {
      _loading.value = true;
    }
  }
}
