import 'package:flutter/material.dart';

const YOUR_SERVER_IP = '10.0.2.2';
const YOUR_SERVER_PORT = '1337';
const SOCKET_URI = 'ws://$YOUR_SERVER_IP:$YOUR_SERVER_PORT';
const SERVER_URL = 'http://$YOUR_SERVER_IP:$YOUR_SERVER_PORT';
const LOGIN_URL = '$SERVER_URL/login';

//const kPrimaryColor = Color(0xff6f35A5);
//const kPrimaryLightColor = Color(0xFFF1E6FF);
//
//const kPrimaryColor = Color.fromRGBO(111, 53, 165, 100);
//const kPrimaryLightColor = Color.fromRGBO(241, 230, 255, 100);

Map<int, Color> primaryCustomColor = {
  50: Color.fromRGBO(23, 3, 58, .1),
  100: Color.fromRGBO(23, 3, 58, .2),
  200: Color.fromRGBO(23, 3, 58, .3),
  300: Color.fromRGBO(23, 3, 58, .4),
  400: Color.fromRGBO(23, 3, 58, .5),
  500: Color.fromRGBO(23, 3, 58, .6),
  600: Color.fromRGBO(23, 3, 58, .7),
  700: Color.fromRGBO(23, 3, 58, .8),
  800: Color.fromRGBO(23, 3, 58, .9),
  900: Color.fromRGBO(23, 3, 58, 1),
};
const kPrimaryCustomColor = Color(0xff101036);
const kWhite = Color(0xffffffff);
const kPrimaryColor = Colors.indigo;
var kPrimaryLightColor = Colors.indigo[50];
