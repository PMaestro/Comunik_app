import 'package:comunik/bloc/login/login_bloc_state.dart';
import 'package:comunik/bloc/login/validators/email_validator.dart';
import 'package:comunik/bloc/login/validators/password_validator.dart';
import 'package:comunik/bloc/login/widget_state/button_state.dart';
import 'package:comunik/bloc/login/widget_state/field_state.dart';
import 'package:comunik/data/data_sources/remote/repositories/login_service.dart';
import 'package:comunik/data/models/user_model.dart';
import 'package:comunik/util/constants.dart';
import 'package:dio/dio.dart';
import 'package:rxdart/rxdart.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginBloc with EmailValidator, PasswordValidator {
  //Declaring the streams controllers
  final BehaviorSubject<LoginBlocState> _stateController =
      BehaviorSubject<LoginBlocState>.seeded(LoginBlocState(LoginState.IDLE));
  final BehaviorSubject<String> _emailController = BehaviorSubject<String>();
  final BehaviorSubject<String> _passwordController = BehaviorSubject<String>();
  //declaring remote and local apis implementation
  LoginBloc();

  UserModel user = UserModel();

  //Streams sink methods used to push data to those streams
  Function(String) get changeEmail => _emailController.sink.add;
  Function(String) get changePassword => _passwordController.sink.add;

  //Streams methods used to send data through the stream to bloc_state
  Stream<LoginBlocState> get outState => _stateController.stream;

  Stream<FieldState> get outEmail =>
      Rx.combineLatest2(_emailController.stream.transform(emailValidator), outState, (a, b) {
        a.enabled = b.state != LoginState.LOADING;
        return a;
      });

  Stream<FieldState> get outPassword =>
      Rx.combineLatest2(_passwordController.stream.transform(passwordValidator), outState, (a, b) {
        a.enabled = b.state != LoginState.LOADING;

        return a;
      });

  Stream<ButtonState> get outLoginButton =>
      Rx.combineLatest3(outEmail, outPassword, outState, (email, password, state) {
        return ButtonState(
            loading: state.state == LoginState.LOADING,
            enabled: email.error == null && password.error == null && state.state != LoginState.LOADING);
      });

  Future<bool> checkAuth() async {
    Dio dio = Dio();
    SharedPreferences prefs = await SharedPreferences.getInstance();
    var token = prefs.get('token');
    if (token != null) {
      return true;
    } else {
      dio.post(SERVER_URL, data: {"email": "testador@nato.com", "password": "testaRindo"});
      return false;
    }
  }

  Future<void> loginWithEmailAndPass() async {
    _stateController.add(LoginBlocState(LoginState.LOADING));
    LoginService _loginService = LoginService.login();
    user.email = "testador@nato.com";
    user.password = "testaRindo";
    _loginService.send(user);
    _stateController.add(LoginBlocState(LoginState.DONE));
  }

  Future<void> loginWithEmailAndPaSs() async {
    _stateController.add(LoginBlocState(LoginState.LOADING));
    Dio dio = Dio();
    Response res = await dio.post(LOGIN_URL, data: {"email": "testador@nato.com", "password": "testaRindo"});
    SharedPreferences prefs = await SharedPreferences.getInstance();
    var token = prefs.get('token');
    token = res.headers["Authorization"];
    _stateController.add(LoginBlocState(LoginState.DONE));
  }

  void dispose() {
    _stateController.close();
    _emailController.close();
    _passwordController.close();
  }
}
