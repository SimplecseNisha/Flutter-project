import 'package:flutter/material.dart';
import 'package:testapp/hidoc/controllers/news_controller.dart';

class BulletingInfoScreen extends StatefulWidget {
  const BulletingInfoScreen({super.key});

  @override
  State<BulletingInfoScreen> createState() => _BulletingInfoScreenState();
}

class _BulletingInfoScreenState extends State<BulletingInfoScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: <BoxShadow>[
              BoxShadow(
                color: Colors.black.withOpacity(0.5),
                offset: const Offset(0, 2.0),
                blurRadius: 5.0,
              ),
            ],
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            children: [
              Container(
                height: 220,
                width: 345,
                decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10)),
                ),
                child: Image.network(
                  NewsController().newsModel!.data.bulletin[0].articleImg,
                  loadingBuilder: (context, child, progress) {
                    return progress == null
                        ? child
                        : const Center(
                            child: Text(
                            "Loading...",
                            style: TextStyle(color: Colors.black, fontSize: 20),
                          ));
                  },
                  fit: BoxFit.fill,
                  errorBuilder: (buildContext, object, stackTrace) {
                    return const SizedBox();
                  },
                ),
              ),
              Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10)),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, top: 20),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: Text(
                          NewsController()
                              .newsModel!
                              .data
                              .bulletin[0]
                              .articleTitle,
                          style: const TextStyle(
                              fontSize: 15,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: Text(
                          NewsController()
                              .newsModel!
                              .data
                              .bulletin[0]
                              .articleDescription,
                          style: const TextStyle(
                              fontSize: 12,
                              color: Colors.black,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            onTap: () {
                              NewsController().launchURL(
                                  NewsController()
                                      .newsModel!
                                      .data
                                      .bulletin[0]
                                      .redirectLink,
                                  context);
                            },
                            child: Text(
                              "Read full article to earn points",
                              style: TextStyle(
                                  fontSize: 12,
                                  decoration: TextDecoration.underline,
                                  color: Colors.lightBlue.shade300,
                                  fontWeight: FontWeight.w400),
                            ),
                          ),
                          Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                color: Colors.lightBlue.shade300,
                                borderRadius: const BorderRadius.only(
                                    bottomRight: Radius.circular(10)),
                              ),
                              child: const Padding(
                                padding:
                                    EdgeInsets.only(top: 3, left: 2, right: 2),
                                child: Text(
                                  "Points 2",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ))
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
