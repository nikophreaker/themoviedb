import 'dart:convert';
/// success : true
/// status_code : 12
/// status_message : "The item/record was updated successfully."

AddWatchlistData addWatchlistDataFromJson(String str) => AddWatchlistData.fromJson(json.decode(str));
String addWatchlistDataToJson(AddWatchlistData data) => json.encode(data.toJson());
class AddWatchlistData {
  AddWatchlistData({
      bool? success, 
      num? statusCode, 
      String? statusMessage,}){
    _success = success;
    _statusCode = statusCode;
    _statusMessage = statusMessage;
}

  AddWatchlistData.fromJson(dynamic json) {
    _success = json['success'];
    _statusCode = json['status_code'];
    _statusMessage = json['status_message'];
  }
  bool? _success;
  num? _statusCode;
  String? _statusMessage;
AddWatchlistData copyWith({  bool? success,
  num? statusCode,
  String? statusMessage,
}) => AddWatchlistData(  success: success ?? _success,
  statusCode: statusCode ?? _statusCode,
  statusMessage: statusMessage ?? _statusMessage,
);
  bool? get success => _success;
  num? get statusCode => _statusCode;
  String? get statusMessage => _statusMessage;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['success'] = _success;
    map['status_code'] = _statusCode;
    map['status_message'] = _statusMessage;
    return map;
  }

}