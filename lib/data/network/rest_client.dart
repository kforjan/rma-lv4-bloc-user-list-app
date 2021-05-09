import 'dart:convert';

import 'package:http/http.dart' as http;

class RestClient {
  Future<dynamic> get(String url) async {
    final response = await http.get(Uri.parse(url));
    final responseBody = response.body;
    final statusCode = response.statusCode;
    if (statusCode < 200 || statusCode >= 400) {
      throw Exception(); //TODO: NetworkException
    }
    return jsonDecode(responseBody);
  }
}
