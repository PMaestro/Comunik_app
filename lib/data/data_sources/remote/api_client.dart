import 'dart:convert' as convert;

import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';

enum TypeRequest { GET, POST, DELETE }

class ApiMensagens {
  static String SUCESS = "ok";
  static String ERROR_API = "Error at api";
  static String ERROR_INTERNET = "Connection error";
}

class ApiClient {
  String url;
  Map<String, String> header;
  Map<dynamic, dynamic> body;
  var onSucess;
  var onFail;
  TypeRequest type;

  ApiClient({this.onFail, this.onSucess, this.body, this.type, this.header, this.url});

  execute([bool autenticated = true]) async {
    if (header == null) {
      header = new Map<String, String>();
    }

    header['Content-type'] = 'application/json';

    if (autenticated) {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      var token = prefs.get('token');
      print(token);
      header["Authorization"] = token;
    }

    switch (type) {
      case TypeRequest.POST:
        await post();
        break;
      case TypeRequest.GET:
        await get();
        break;
      case TypeRequest.DELETE:
        await delete();
        break;
      default:
        break;
    }
  }

  post() async {
    Dio dio = new Dio();
    try {
      dio.options.headers = header;
      dio.options.connectTimeout = 50000;
      dio.options.receiveTimeout = 50000;
      print("Processando envio..");
      print(DateTime.now().toIso8601String());
      var _body = convert.json.encode(body);
      print("Enviando..");
      print(DateTime.now().toIso8601String());
      Response response = await dio.post(url, data: _body);
      print("Processando resposta..");
      print(DateTime.now().toIso8601String());
      if (response.statusCode != 200 && response.statusCode != 201 && response.statusCode != 204) {
        onFail(response, response.headers);
        print(response.data);
      } else {
        if (response.data is String) {
          dynamic responseJson;
          try {
            responseJson = convert.jsonDecode(response.data);
          } catch (Ex) {
            responseJson = response.data;
          }
          await onSucess(responseJson, response.headers);
        } else if (response.data is List) {
          await onSucess(response.data, response.headers);
        } else if (response.data is Map) {
          await onSucess(response.data, response.headers);
        } else {
          await onSucess(null, response.headers);
        }
      }
    } catch (ex) {
      onFail(ex, null);
    }
  }

  get() async {
    Dio dio = new Dio();
    dio.options.headers = header;
    dio.options.connectTimeout = 15000;
    dio.options.receiveTimeout = 15000;
    print("Solicitando dados..");
    print(DateTime.now().toIso8601String());
    Response response = await dio.get(url);
    print("Processando resposta..");
    print(DateTime.now().toIso8601String());
    if (response.statusCode != 200 && response.statusCode != 201 && response.statusCode != 204) {
      onFail(response);
    } else {
      if (response.data is String) {
        dynamic responseJson;
        try {
          responseJson = convert.jsonDecode(response.data);
        } catch (Ex) {
          responseJson = response.data;
        }
        await onSucess(responseJson, response.headers);
      } else if (response.data is List) {
        await onSucess(response.data, response.headers);
      } else if (response.data is Map) {
        if (response.data['code'] == 201) {
          onFail(response);
        } else {
          await onSucess(response.data, response.headers);
        }
      } else {
        await onSucess(null, response.headers);
      }
    }
  }

  delete() async {
    Dio dio = new Dio();
    try {
      dio.options.headers = header;
      dio.options.connectTimeout = 30000;
      dio.options.receiveTimeout = 30000;
      print("Processando envio..");
      print(DateTime.now().toIso8601String());
      var _body = convert.json.encode(body);
      print("Enviando..");
      print(DateTime.now().toIso8601String());
      Response response = await dio.delete(url, data: _body);
      print(_body);
      print("Processando resposta..");
      print(DateTime.now().toIso8601String());
      if (response.statusCode != 200 && response.statusCode != 201 && response.statusCode != 204) {
        onFail(response, response.headers);
        print(response.data);
      } else {
        if (response.data is String) {
          dynamic responseJson;
          try {
            responseJson = convert.jsonDecode(response.data);
          } catch (Ex) {
            responseJson = response.data;
          }
          await onSucess(responseJson, response.headers);
        } else if (response.data is List) {
          await onSucess(response.data, response.headers);
        } else if (response.data is Map) {
          await onSucess(response.data, response.headers);
        } else {
          await onSucess(null, response.headers);
        }
      }
    } catch (ex) {
      onFail(ex, null);
    }
  }
}
