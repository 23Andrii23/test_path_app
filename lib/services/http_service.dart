import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

class HttpService {
  Future<void> getMainData(String url) async {
    try {
      final response = await http.get(Uri.parse(url));

      final Map<String, dynamic> decode = jsonDecode(response.body);
      debugPrint(decode.toString());
    } catch (e) {
      debugPrint(e.toString());
      rethrow;
    }
  }
}
