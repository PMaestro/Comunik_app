import 'package:comunik/data/models/super_model.dart';

class UserModel extends SuperModel {
  String _id;
  String _nome;
  String _email;
  String _password;
  String _imageUrl;
  String _bithDate;
  String _cpf;

//  static final UserModel _singleton = UserModel._internal();
//
//  factory UserModel.singleton() {
//    return _singleton;
//  }
//
//  UserModel._internal();

  UserModel({String nome, String email, String id, String password, String imageUrl, String bithDate, String cpf}) {
    this._nome = nome;
    this._email = email;
    this._id = id;
    this._password = password;
    this._imageUrl = imageUrl;
    this._bithDate = bithDate;
    this._cpf = cpf;
  }

  String get nome => _nome;
  set nome(String nome) => _nome = nome;
  String get email => _email;
  set email(String email) => _email = email;
  String get id => _id;
  set id(String id) => _id = id;
  String get password => _password;
  set password(String password) => _password = password;
  String get imageUrl => _imageUrl;
  set imageUrl(String imageUrl) => _imageUrl = imageUrl;
  String get bithDate => _bithDate;
  set bithDate(String bithDate) => _bithDate = bithDate;
  String get cpf => _cpf;
  set cpf(String cpf) => _cpf = cpf;

  UserModel.fromJson(Map<String, dynamic> json) {
    _nome = json['nome'];
    _email = json['email'];
    _id = json['id'];
    _password = json['password'];
    _imageUrl = json['imageUrl'];
    _bithDate = json['bithDate'];
    _cpf = json['cpf'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['nome'] = this._nome;
    data['email'] = this._email;
    data['id'] = this._id;
    data['password'] = this._password;
    data['imageUrl'] = this._imageUrl;
    data['bithDate'] = this._bithDate;
    data['cpf'] = this._cpf;
    return data;
  }
}
