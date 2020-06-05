import 'package:comunik/data/data_sources/remote/api_client.dart';
import 'package:comunik/data/models/super_model.dart';

class ApiRepository<T extends SuperModel> {
  Function modelContructor;
  String url;

  Future<bool> send(T model) async {
    bool sucess = false;

    ApiClient httpClient = new ApiClient(
        url: url,
        body: model.toJson(),
        type: TypeRequest.POST,
        onSucess: (response, responseHeader) {
          sucess = true;
        },
        onFail: (response, responseHeader) {
          print(response);
          sucess = false;
        });

    await httpClient.execute(true);

    return sucess;
  }

  Future<T> sendWithReturn(T model) async {
    bool sucess = false;
    ApiClient httpClient = new ApiClient(
        url: url,
        body: model.toJson(),
        type: TypeRequest.POST,
        onSucess: (response, responseHeader) {
          sucess = true;
          if (response['code'] != null) {
            model = null;
            print(response);
          } else {
            model = modelContructor(response);
          }
        },
        onFail: (response, responseHeader) {
          print(response);
          //
          sucess = false;
          model = null;
        });

    await httpClient.execute(true);

    return model;
  }

  Future<T> sendDeleteWithReturn(T model) async {
    bool sucess = false;
    ApiClient httpClient = new ApiClient(
        url: url,
        body: model.toJson(),
        type: TypeRequest.DELETE,
        onSucess: (response, responseHeader) {
          sucess = true;
          if (response == '') {
            model = null;
            print('Removido com sucesso!');
          } else {
            model = modelContructor(response);
          }
        },
        onFail: (response, responseHeader) {
          print(response);
          sucess = false;
          model = null;
        });

    await httpClient.execute(true);

    return model;
  }

  Future<dynamic> sendWithGenericReturn(T model) async {
    dynamic result;
    ApiClient httpClient = new ApiClient(
        url: url,
        body: model.toJson(),
        type: TypeRequest.POST,
        onSucess: (response, responseHeader) {
          result = response;
        },
        onFail: (response, responseHeader) {
          print(response);
          result = false;
        });
    await httpClient.execute(true);
    return result;
  }

  Future<List<T>> getMultiple() async {
    List<T> listModel = [];
    ApiClient httpClient = new ApiClient(
        url: url,
        type: TypeRequest.GET,
        onSucess: (response, responseHeader) {
          List list = response as List;
          listModel = list.map<T>((data) => modelContructor(data)).toList();
        },
        onFail: (error) {
          print(error);
          listModel = [];
        });
    await httpClient.execute(true);
    return listModel;
  }

  Future<T> getSingle() async {
    T model;
    ApiClient httpClient = new ApiClient(
        url: url,
        type: TypeRequest.GET,
        onSucess: (response, responseHeader) {
          model = modelContructor(response);
        },
        onFail: () {
          model = null;
        });
    await httpClient.execute(true);
    return model;
  }
}
