import 'package:comunik/data/models/super_model.dart';
import 'package:comunik/data/models/user_model.dart';

class MessageModel implements SuperModel {
  UserModel _userModel;
  String _time;
  String _text;
  bool _isLiked;
  bool _unRead;

  MessageModel({UserModel userModel, String time, String text, bool isLiked, bool unRead}) {
    this._userModel = userModel;
    this._time = time;
    this._text = text;
    this._isLiked = isLiked;
    this._unRead = unRead;
  }

  UserModel get userModel => _userModel;
  set userModel(UserModel userModel) => _userModel = userModel;
  String get time => _time;
  set time(String time) => _time = time;
  String get text => _text;
  set text(String text) => _text = text;
  bool get isLiked => _isLiked;
  set isLiked(bool isLiked) => _isLiked = isLiked;
  bool get unRead => _unRead;
  set unRead(bool unRead) => _unRead = unRead;

  MessageModel.fromJson(Map<String, dynamic> json) {
    _userModel = json['UserModel'] != null ? new UserModel.fromJson(json['UserModel']) : null;
    _time = json['time'];
    _text = json['text'];
    _isLiked = json['isLiked'];
    _unRead = json['unRead'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this._userModel != null) {
      data['UserModel'] = this._userModel.toJson();
    }
    data['time'] = this._time;
    data['text'] = this._text;
    data['isLiked'] = this._isLiked;
    data['unRead'] = this._unRead;
    return data;
  }
}
