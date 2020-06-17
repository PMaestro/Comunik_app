class UserModel {
  String _id;
  String _fistName;
  String _lastName;
  String _email;
  String _password;
  String _imageUrl;
  String _bithDate;
  String _cpf;

  UserModel(
      {String id,
      String fistName,
      String lastName,
      String email,
      String password,
      String imageUrl,
      String bithDate,
      String cpf}) {
    this._id = id;
    this._fistName = fistName;
    this._lastName = lastName;
    this._email = email;
    this._password = password;
    this._imageUrl = imageUrl;
    this._bithDate = bithDate;
    this._cpf = cpf;
  }

  String get id => _id;
  set id(String id) => _id = id;
  String get fistName => _fistName;
  set fistName(String fistName) => _fistName = fistName;
  String get lastName => _lastName;
  set lastName(String lastName) => _lastName = lastName;
  String get email => _email;
  set email(String email) => _email = email;
  String get password => _password;
  set password(String password) => _password = password;
  String get imageUrl => _imageUrl;
  set imageUrl(String imageUrl) => _imageUrl = imageUrl;
  String get bithDate => _bithDate;
  set bithDate(String bithDate) => _bithDate = bithDate;
  String get cpf => _cpf;
  set cpf(String cpf) => _cpf = cpf;

  UserModel.fromJson(Map<String, dynamic> json) {
    _id = json['id'];
    _fistName = json['fistName'];
    _lastName = json['lastName'];
    _email = json['email'];
    _password = json['password'];
    _imageUrl = json['imageUrl'];
    _bithDate = json['bithDate'];
    _cpf = json['cpf'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this._id;
    data['fistName'] = this._fistName;
    data['lastName'] = this._lastName;
    data['email'] = this._email;
    data['password'] = this._password;
    data['imageUrl'] = this._imageUrl;
    data['bithDate'] = this._bithDate;
    data['cpf'] = this._cpf;
    return data;
  }
}
