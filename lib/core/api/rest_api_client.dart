import 'package:dio/dio.dart';
import 'package:flutter_modular/flutter_modular.dart';

class RestApiClient {
  // late ShipsApi shipsApi;

  RestApiClient();

  Future<void> init() async {
    final Dio dio = Modular.get<Dio>();

    final String url = 'https://www.ncl.com/cms-service/';
    dio.options = BaseOptions(baseUrl: url);
  }

  // shipsApi = ShipsApi(dio);
}

// class ShipsApi {
//   factory ShipsApi(Dio dio, {String baseUrl}) = _ShipsApi;

//   Future getSkyInformation() async {
//   Response reponse = await dio.get('cruiseShips/SKY');
//   }
// }
