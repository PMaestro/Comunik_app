import 'package:comunik/bloc/login/login_bloc.dart';
import 'package:comunik/data/data_sources/local/database/database.dart';
import 'package:comunik/screens/login_and_signup/widget/login_singup_screen_body.dart';
import 'package:comunik/util/constants.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(
    MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  final db = MyDatabase();
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<LoginBloc>(
          create: (_) => LoginBloc(),
          dispose: (context, value) => value.dispose(),
        ),
        Provider(create: (_) => db.usersDao),
      ],
      child: MaterialApp(
        title: 'Comunik',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: kPrimaryColor,
          accentColor: kPrimaryLightColor,
          scaffoldBackgroundColor: Colors.white,
        ),
        home: LoginSingupScreenBody(),
      ),
    );
  }
}
