import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'package:webspark_test/models/custom_point.model.dart';
import 'package:webspark_test/models/main_response.model.dart';
import 'package:webspark_test/models/result_response.dart';

class HttpService {
  Future<MainResponse> fetchPathData(String url) async {
    try {
      final response = await http.get(Uri.parse(url));

      final Map<String, dynamic> decode = jsonDecode(response.body);
      return MainResponse.fromJson(decode);
    } catch (e) {
      debugPrint(e.toString());
      rethrow;
    }
  }

  Future<ResultResponse> postPathResult({
    required String url,
    required Map<String, List<CustomPoint>> idPathMap,
  }) async {
    try {
      final List<Map<String, dynamic>> requestBody = [];

      idPathMap.forEach((id, path) {
        final result = {
          "steps": path
              .map((point) => {
                    "x": point.x.toString(),
                    "y": point.y.toString(),
                  })
              .toList(),
          "path": path.map((point) => "(${point.x},${point.y})").join("->"),
        };

        requestBody.add({
          "id": id,
          "result": result,
        });
      });

      final String jsonBody = jsonEncode(requestBody);

      final response = await http.post(
        Uri.parse(url),
        headers: {
          'Content-Type': 'application/json',
        },
        body: jsonBody,
      );

      if (response.statusCode != 200) {
        throw Exception(
            'Failed to post data. Status code: ${response.statusCode}, Response: ${response.body}');
      }

      final result = ResultResponse.fromJson(jsonDecode(response.body));
      return result;
    } catch (e) {
      debugPrint('Error posting data: ${e.toString()}');
      rethrow;
    }
  }
}
