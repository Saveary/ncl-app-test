import 'dart:convert';
import 'package:http/http.dart' as http;

/// The service responsible for networking requests
class HttpRequestProtocol {
  static const endpoint = 'https://www.ncl.com/cms-service/';

  var client = http.Client();

  Future<dynamic> getRequest(String path) async {
    if (endpoint != 'localhost:8000') {
      path = 'endpoint/$path';
    }

    var response = await client.get(Uri.https(endpoint, path));

    // Convert and return
    return json.decode(response.body);
  }

  Future<dynamic> postRequest(String path, parameters) async {
    if (endpoint != 'localhost:8000') {
      path = 'endpoint/$path';
    }

    var response = await client.post(Uri.https(endpoint, path),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonEncode(parameters));

    // Convert and return
    return json.decode(response.body);
  }
}
