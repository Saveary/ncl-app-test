import 'dart:convert';

import 'package:http/http.dart' as http;

class ShipProvider {
  var client = http.Client();
  static String endpoint = 'https://www.ncl.com/cms-service/';

  Future getSkyShip() async {
    var response = await client.get(
      Uri.http(endpoint, 'api/transactions'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
    );

    var results = json.decode(response.body);
    return results;
  }
}
