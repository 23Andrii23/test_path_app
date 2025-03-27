import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'package:webspark_test/models/main_response.model.dart';

class HttpService {
  Future<MainResponse> getMainData(String url) async {
    try {
      final response = await http.get(Uri.parse(url));

      final Map<String, dynamic> decode = jsonDecode(response.body);
      return MainResponse.fromJson(decode);
    } catch (e) {
      debugPrint(e.toString());
      rethrow;
    }
  }
}
