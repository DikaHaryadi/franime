// import 'dart:convert';

// import 'package:franime/models/animes_model.dart';
// import 'package:http/http.dart' as http;
// import 'package:flutter/services.dart' show rootBundle;

// class DataServices {
//   String _baseUrl = 'http://franime.bydk.id/api';

//   // Future<List<DataModel>> getUsers() async {
//   Future<List<dynamic>> getUsers() async {
//     var apiUrl = '/anime';

//     http.Response response = await http.get(Uri.parse(_baseUrl + apiUrl));

//     try {
//       if (response.statusCode == 200) {
//         List<dynamic> list = await json.decode(response.body);
//         print(list);
//         return [];
//         // return list.map((e) => new DataModel.fromJson(e)).toList();
//       } else {
//         print("Ada yg Salah");
//         // return <DataModel>[];
//         return [];
//       }
//     } catch (e) {
//       print(e);
//       print("api request failed");
//       return [];
//       // return <DataModel>[];
//     }

//     // var info = rootBundle.loadString("json/data.json");
//     // List<dynamic> list = json.decode(await info);
//     // return Future.delayed(
//     //     const Duration(seconds: 3), () => list.map((e) => e).toList());
//   }
// }

import 'dart:convert';

import 'package:flutter/services.dart' show rootBundle;

class DataServices {
  Future<List<dynamic>> getUsers() async {
    var info = rootBundle.loadString("json/data.json");
    List<dynamic> list = json.decode(await info);
    return Future.delayed(
        Duration(seconds: 3), (() => list.map((e) => e).toList()));
  }
}
