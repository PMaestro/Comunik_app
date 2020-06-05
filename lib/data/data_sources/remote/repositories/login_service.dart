import 'package:comunik/data/data_sources/remote/repositories/api_repository.dart';
import 'package:comunik/data/models/user_model.dart';
import 'package:comunik/util/constants.dart';

class LoginService extends ApiRepository<UserModel> {
  LoginService.login() {
    this.url = LOGIN_URL;
  }
}
