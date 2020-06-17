import 'package:comunik/data/models/user_model.dart';

class ContactListModel {
  int _id;
  String _ownerId;
  List<UserModel> _contacts;

  ContactListModel({int id, String ownerId, List<UserModel> contacts}) {
    this._id = id;
    this._ownerId = ownerId;
    this._contacts = contacts;
  }

  // ignore: unnecessary_getters_setters
  int get id => _id;
  set id(int id) => _id = id;
  String get ownerId => _ownerId;
  set ownerId(String ownerId) => _ownerId = ownerId;
  List<UserModel> get contacts => _contacts;
  set contacts(List<UserModel> contacts) => _contacts = contacts;

  ContactListModel.fromJson(Map<String, dynamic> json) {
    _id = json['id'];
    _ownerId = json['ownerId'];
    if (json['UserModel'] != null) {
      _contacts = new List<UserModel>();
      json['UserModel'].forEach((v) {
        _contacts.add(new UserModel.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this._id;
    data['ownerId'] = this._ownerId;
    if (this._contacts != null) {
      data['UserModel'] = this._contacts.map((v) => v.toJson()).toList();
    }
    return data;
  }
}
