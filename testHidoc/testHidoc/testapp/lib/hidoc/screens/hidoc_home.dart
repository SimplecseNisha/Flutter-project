import 'package:flutter/material.dart';
import 'package:testapp/hidoc/common_components/common_background.dart';
import 'package:testapp/hidoc/controllers/news_controller.dart';
import 'package:testapp/hidoc/models/news_model.dart';
import 'package:testapp/hidoc/screens/bulletin_info.dart';
import 'package:testapp/hidoc/screens/trending_bulleting.dart';

import '../common_components/common_hidoc_appbar.dart.dart';

class HidocNewsHomeScreen extends StatefulWidget {
  const HidocNewsHomeScreen({Key? key}) : super(key: key);

  @override
  State<HidocNewsHomeScreen> createState() => _HidocNewsHomeScreenState();
}

class _HidocNewsHomeScreenState extends State<HidocNewsHomeScreen> {
  NewsModel? newsModel;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fetchData();
  }

  fetchData() async {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      newsModel = await NewsController().fetchNewsData();
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CommonAppBackground(
            child: StreamBuilder<int>(
      stream: generateData,
      builder: (
        BuildContext context,
        AsyncSnapshot<int> snapshot,
      ) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return CircularProgressIndicator();
        } else if (snapshot.connectionState == ConnectionState.active ||
            snapshot.connectionState == ConnectionState.done) {
          if (snapshot.hasError) {
            return const Text('Something went wrong');
          } else if (snapshot.hasData) {
            return cardsData();
          } else {
            return const Text('Empty data');
          }
        } else {
          return Text('State: ${snapshot.connectionState}');
        }
      },
    )));
  }

  Widget cardsData() {
    return Column(
      children: [
        Expanded(
          flex: 1,
          child: CommonHidocAppAppbar(
            title: "Article",
          ),
        ),
        Expanded(
          flex: 4,
          child: (NewsController().newsModel == null)
              ? const SizedBox()
              : SingleChildScrollView(
                  child: SizedBox(
                    child: Column(
                      children: const [
                        BulletingInfoScreen(),
                        TrendingBulletin()
                      ],
                    ),
                  ),
                ),
        )
      ],
    );
  }

  Stream<int> generateData = (() async* {
    await Future<void>.delayed(const Duration(milliseconds: 2));

    for (int i = 1; i <= 5; i++) {
      await Future<void>.delayed(const Duration(milliseconds: 1));
      yield i;
    }
  })();
}
