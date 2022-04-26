import 'dart:convert';

import 'package:http/http.dart';
import 'package:http1/model/comments_class.dart';

class NetworkServise {
  // URL

  static const String baseUrl = 'jsonplaceholder.typicode.com';

  // HEADERS

  static Map<String, String> headers = {
    'Content-type': 'application/json; charset=UTF-8',
  };

// APIS

  static const String apiComments = '/comments';
  static const String apiComment = '/comments/';

// METHODS

  static Future<String> GET(String api, Map<String, String> headers) async {
    Uri uri = Uri.https(baseUrl, api);
    Response response = await get(uri, headers: headers);
    if (response.statusCode == 200 || response.statusCode == 201) {
      return response.body;
    } else {
      throw Exception('Error');
    }
  }

  static Future<String> POST(String api, Map<String, String> headers,
      Map<String, dynamic> body) async {
    Uri uri = Uri.https(baseUrl, api);
    Response response =
        await post(uri, headers: headers, body: jsonEncode(body));
    if (response.statusCode == 200 || response.statusCode == 201) {
      return response.body;
    } else {
      throw Exception('Error');
    }
  }

  static Future<String> PATCH(String api, Map<String, String> headers, Map<String, dynamic> body) async{
    Uri uri = Uri.https(baseUrl, api);
    Response response = await patch(uri, headers: headers, body: jsonEncode(body));
    if(response.statusCode == 200 || response.statusCode == 201) {
      return response.body;
    } else {
      throw Exception("Error");
    }
  }

  static Future<String> PUT(String api, Map<String, String> headers,
      Map<String, dynamic> body) async {
    Uri uri = Uri.https(baseUrl, api);
    Response response =
        await patch(uri, headers: headers, body: jsonEncode(body));
    if (response.statusCode == 200 || response.statusCode == 201) {
      return response.body;
    } else {
      throw Exception('Error');
    }
  }

  static Future<String> DELETE(String api, Map<String, String> headers) async {
    Uri uri = Uri.https(baseUrl, api);
    Response response = await delete(uri, headers: headers);
    if (response.statusCode == 200 || response.statusCode == 201) {
      return response.body;
    } else {
      throw Exception('Error');
    }
  }

  // PARSING
  static ListparseCommentList(String body) {
    List json = jsonDecode(body);
    List comments = json.map((map) => Comments.fromJson(map)).toList();
    return comments;
  }

  static Comments parseComment(String body) {
    Map<String, dynamic> json = jsonDecode(body);
    Comments comments = Comments.fromJson(json);
    return comments;
  }
}
