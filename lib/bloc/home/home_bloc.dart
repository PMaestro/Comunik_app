import 'package:comunik/bloc/login/login_bloc_state.dart';
import 'package:rxdart/rxdart.dart';

class HomeBloc {
  final BehaviorSubject<LoginBlocState> _stateController =
      BehaviorSubject<LoginBlocState>.seeded(LoginBlocState(LoginState.IDLE));

  //Streams methods used to send data through the stream to bloc_state
  Stream<LoginBlocState> get outState => _stateController.stream;

  void dispose() {
    _stateController.close();
  }
}
