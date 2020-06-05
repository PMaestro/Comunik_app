import 'dart:async';

import 'package:comunik/bloc/login/widget_state/field_state.dart';

class PasswordValidator {
  final StreamTransformer<String, FieldState> passwordValidator =
      StreamTransformer<String, FieldState>.fromHandlers(handleData: (pass, sink) {
    if (pass.isEmpty)
      sink.add(FieldState(error: 'Campo obrigatório'));
    else
      sink.add(FieldState());
  });
}
