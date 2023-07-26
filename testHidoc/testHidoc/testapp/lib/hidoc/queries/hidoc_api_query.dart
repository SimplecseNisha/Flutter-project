import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:testapp/hidoc/models/news_model.dart';

class ApiQuery {
  NewsModel? newsModel;
  getData() async {
    try {
      String url =
          "http://devapi.hidoc.co:8080/HidocWebApp/api/getArticlesByUid?";
      Map<String, dynamic> requestBody = <String, dynamic>{
        'ssId': "500",
        'userId': "423914",
      };
      http.Response res = await http.post(Uri.parse(url), body: requestBody);
      if (res.statusCode == 200) {
        newsModel = NewsModel.fromJson(jsonDecode(res.body));
      }
      return newsModel;
    } catch (e) {
      rethrow;
    }
  }
}
