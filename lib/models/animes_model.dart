// class Anime {
//   String? _img;
//   String? _title;
//   String? _japanver;
//   String? _engver;
//   String? _type;
//   String? _episode;
//   String? _status;
//   String? _aired;
//   String? _premiered;
//   String? _broadcast;
//   String? _produser;
//   String? _lisensor;
//   String? _studios;
//   String? _source;
//   String? _genres;
//   String? _themes;
//   String? _duration;
//   String? _rating;

//   Anime({
//     required img,
//     required title,
//     required japanver,
//     required engver,
//     required type,
//     required episode,
//     required status,
//     required aired,
//     required premiered,
//     required broadcast,
//     required produser,
//     required lisensor,
//     required studios,
//     required source,
//     required genres,
//     required themes,
//     required duration,
//     required rating,
//   }) {
//     this._img = img;
//     this._title = title;
//     this._japanver = japanver;
//     this._engver = engver;
//     this._type = type;
//     this._episode = episode;
//     this._status = status;
//     this._aired = aired;
//     this._premiered = premiered;
//     this._broadcast = broadcast;
//     this._produser = produser;
//     this._lisensor = lisensor;
//     this._studios = studios;
//     this._source = source;
//     this._genres = genres;
//     this._themes = themes;
//     this._duration = duration;
//     this._rating = rating;
//   }

//   Anime.fromJson(Map<String, dynamic> json) {
//     _img = json['img'];
//     _title = json['title'];
//     _japanver = json['japanver'];
//     _engver = json['engver'];
//     _type = json['type'];
//     _episode = json['episode'];
//     _status = json['status'];
//     _aired = json['aired'];
//     _premiered = json['premiered'];
//     _broadcast = json['broadcast'];
//     _produser = json['produser'];
//     _lisensor = json['lisensor'];
//     _studios = json['studios'];
//     _source = json['source'];
//     _genres = json['genres'];
//     _themes = json['themes'];
//     _duration = json['duration'];
//     _rating = json['rating'];
//   }
// }

class Anime {
  late List<DataModel> _data;
  List<DataModel> get data => _data;

  Anime({required data}) {
    this._data = data;
  }

  Anime.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      _data = <DataModel>[];
      json['data'].forEach((v) {
        _data.add(DataModel.fromJson(v));
      });
    }
  }
}

class DataModel {
  int? id;
  String? img;
  String? title;
  String? japanver;
  String? engver;
  String? type;
  String? episode;
  String? status;
  String? aired;
  String? premiered;
  String? broadcast;
  String? produser;
  String? lisensor;
  String? studios;
  String? source;
  String? genres;
  String? themes;
  String? duration;
  String? rating;
  String? createdAt;
  String? updatedAt;

  DataModel(
      {this.id,
      this.img,
      this.title,
      this.japanver,
      this.engver,
      this.type,
      this.episode,
      this.status,
      this.aired,
      this.premiered,
      this.broadcast,
      this.produser,
      this.lisensor,
      this.studios,
      this.source,
      this.genres,
      this.themes,
      this.duration,
      this.rating,
      this.createdAt,
      this.updatedAt});

  DataModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    img = json['img'];
    title = json['title'];
    japanver = json['japanver'];
    engver = json['engver'];
    type = json['type'];
    episode = json['episode'];
    status = json['status'];
    aired = json['aired'];
    premiered = json['premiered'];
    broadcast = json['broadcast'];
    produser = json['produser'];
    lisensor = json['lisensor'];
    studios = json['studios'];
    source = json['source'];
    genres = json['genres'];
    themes = json['themes'];
    duration = json['duration'];
    rating = json['rating'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }
}
