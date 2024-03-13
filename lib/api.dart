import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:joana/response_model.dart';

class API {
  static const String baseUrl =
      "https://api.dictionaryapi.dev/api/v2/entries/en/";

  static Future<ResponseModel> fetchMeaning(String word) async {
    final response = await http.get(Uri.parse("$baseUrl$word"));
    if (response.statusCode == 200) {
      final List<dynamic> data = json.decode(response.body);
      if (data.isNotEmpty) {
        return ResponseModel.fromJson(data[0]);
      } else {
        throw Exception("No data found for the word: $word");
      }
    } else {
      throw Exception("Failed to load meaning. Status code: ${response.statusCode}");
    }
  }
}
