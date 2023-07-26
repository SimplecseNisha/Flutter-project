import 'package:flutter/material.dart';
import 'package:testapp/hidoc/controllers/news_controller.dart';
import 'package:testapp/hidoc/models/news_model.dart';

class TrendingBulletin extends StatefulWidget {
  const TrendingBulletin({super.key});

  @override
  State<TrendingBulletin> createState() => _TrendingBulletinState();
}

class _TrendingBulletinState extends State<TrendingBulletin> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 30, bottom: 30),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        const Text(
          "Hidoc Bulletin",
          style: TextStyle(
              color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 20,
        ),
        ...NewsController()
            .newsModel!
            .data
            .trandingBulletin
            .map((bulletinData) => trendingBulletinData(bulletinData))
            .toList(),
      ]),
    );
  }

  Widget trendingBulletinData(TrandingBulletin bulletinData) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              height: 10,
              width: 100,
              color: Colors.lightBlue.shade300,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            bulletinData.articleTitle,
            style: const TextStyle(
                fontSize: 15, color: Colors.black, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            bulletinData.articleDescription,
            style: const TextStyle(
                fontSize: 12, color: Colors.black, fontWeight: FontWeight.w400),
          ),
          const SizedBox(
            height: 10,
          ),
          GestureDetector(
            onTap: () {
              NewsController().launchURL(bulletinData.redirectLink, context);
            },
            child: Text(
              "Read more",
              style: TextStyle(
                  fontSize: 12,
                  decoration: TextDecoration.underline,
                  color: Colors.lightBlue.shade300,
                  fontWeight: FontWeight.w400),
            ),
          ),
        ],
      ),
    );
  }
}
