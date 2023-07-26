import 'package:flutter/material.dart';
import 'package:testapp/hidoc/models/news_model.dart';
import 'package:testapp/hidoc/queries/hidoc_api_query.dart';
import 'package:url_launcher/url_launcher.dart';

class NewsController {
  static final instance = NewsController._();
  factory NewsController() => instance;
  NewsModel? newsModel;

  NewsController._();

  fetchNewsData() async {
    try {
      newsModel = await ApiQuery().getData();
    } catch (e) {
      return Exception(e);
    }
  }

  launchURL(String linkUrl, BuildContext context) async {
    String url = linkUrl;
    if (await canLaunchUrl(Uri.parse(url))) {
      await launchUrl(Uri.parse(url));
    } else {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text(
          "Unable to open the link",
          style: TextStyle(color: Colors.black),
        ),
      ));
      throw 'Could not launch $url';
    }
  }
}
