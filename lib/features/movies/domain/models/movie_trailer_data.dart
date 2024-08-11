import 'dart:convert';
/// id : 533535
/// results : [{"iso_639_1":"id","iso_3166_1":"ID","name":"Marvel Studios' Deadpool & Wolverine | Official Trailer | In Cinemas July 2024","key":"9s5KOo6B-Pk","site":"YouTube","size":1080,"type":"Trailer","official":true,"published_at":"2024-04-22T13:58:59.000Z","id":"6626e3752588230131905622"},{"iso_639_1":"id","iso_3166_1":"ID","name":"Deadpool & Wolverine | Official Teaser | In Cinemas July 2024","key":"QX8XdRoaLoQ","site":"YouTube","size":1080,"type":"Trailer","official":true,"published_at":"2024-02-12T00:42:37.000Z","id":"65c9f9180835470184cf99ca"}]

MovieTrailerData movieTrailerDataFromJson(String str) => MovieTrailerData.fromJson(json.decode(str));
String movieTrailerDataToJson(MovieTrailerData data) => json.encode(data.toJson());
class MovieTrailerData {
  MovieTrailerData({
      num? id, 
      List<Results>? results,}){
    _id = id;
    _results = results;
}

  MovieTrailerData.fromJson(dynamic json) {
    _id = json['id'];
    if (json['results'] != null) {
      _results = [];
      json['results'].forEach((v) {
        _results?.add(Results.fromJson(v));
      });
    }
  }
  num? _id;
  List<Results>? _results;
MovieTrailerData copyWith({  num? id,
  List<Results>? results,
}) => MovieTrailerData(  id: id ?? _id,
  results: results ?? _results,
);
  num? get id => _id;
  List<Results>? get results => _results;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    if (_results != null) {
      map['results'] = _results?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// iso_639_1 : "id"
/// iso_3166_1 : "ID"
/// name : "Marvel Studios' Deadpool & Wolverine | Official Trailer | In Cinemas July 2024"
/// key : "9s5KOo6B-Pk"
/// site : "YouTube"
/// size : 1080
/// type : "Trailer"
/// official : true
/// published_at : "2024-04-22T13:58:59.000Z"
/// id : "6626e3752588230131905622"

Results resultsFromJson(String str) => Results.fromJson(json.decode(str));
String resultsToJson(Results data) => json.encode(data.toJson());
class Results {
  Results({
      String? iso6391, 
      String? iso31661, 
      String? name, 
      String? key, 
      String? site, 
      num? size, 
      String? type, 
      bool? official, 
      String? publishedAt, 
      String? id,}){
    _iso6391 = iso6391;
    _iso31661 = iso31661;
    _name = name;
    _key = key;
    _site = site;
    _size = size;
    _type = type;
    _official = official;
    _publishedAt = publishedAt;
    _id = id;
}

  Results.fromJson(dynamic json) {
    _iso6391 = json['iso_639_1'];
    _iso31661 = json['iso_3166_1'];
    _name = json['name'];
    _key = json['key'];
    _site = json['site'];
    _size = json['size'];
    _type = json['type'];
    _official = json['official'];
    _publishedAt = json['published_at'];
    _id = json['id'];
  }
  String? _iso6391;
  String? _iso31661;
  String? _name;
  String? _key;
  String? _site;
  num? _size;
  String? _type;
  bool? _official;
  String? _publishedAt;
  String? _id;
Results copyWith({  String? iso6391,
  String? iso31661,
  String? name,
  String? key,
  String? site,
  num? size,
  String? type,
  bool? official,
  String? publishedAt,
  String? id,
}) => Results(  iso6391: iso6391 ?? _iso6391,
  iso31661: iso31661 ?? _iso31661,
  name: name ?? _name,
  key: key ?? _key,
  site: site ?? _site,
  size: size ?? _size,
  type: type ?? _type,
  official: official ?? _official,
  publishedAt: publishedAt ?? _publishedAt,
  id: id ?? _id,
);
  String? get iso6391 => _iso6391;
  String? get iso31661 => _iso31661;
  String? get name => _name;
  String? get key => _key;
  String? get site => _site;
  num? get size => _size;
  String? get type => _type;
  bool? get official => _official;
  String? get publishedAt => _publishedAt;
  String? get id => _id;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['iso_639_1'] = _iso6391;
    map['iso_3166_1'] = _iso31661;
    map['name'] = _name;
    map['key'] = _key;
    map['site'] = _site;
    map['size'] = _size;
    map['type'] = _type;
    map['official'] = _official;
    map['published_at'] = _publishedAt;
    map['id'] = _id;
    return map;
  }

}