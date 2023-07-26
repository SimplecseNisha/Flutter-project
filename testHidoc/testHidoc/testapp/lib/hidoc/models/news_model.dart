class NewsModel {
  NewsModel({
    required this.success,
    required this.message,
    required this.data,
    required this.timestamp,
  });
  late final int success;
  late final String message;
  late final Data data;
  late final String timestamp;

  NewsModel.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    message = json['message'];
    data = Data.fromJson(json['data']);
    timestamp = json['timestamp'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['success'] = success;
    _data['message'] = message;
    _data['data'] = data.toJson();
    _data['timestamp'] = timestamp;
    return _data;
  }
}

class Data {
  Data({
    required this.news,
    required this.trandingBulletin,
    required this.specialityName,
    required this.latestArticle,
    required this.exploreArticle,
    required this.trandingArticle,
    required this.article,
    required this.bulletin,
    required this.sId,
  });
  late final List<News> news;
  late final List<TrandingBulletin> trandingBulletin;
  late final String specialityName;
  late final List<dynamic> latestArticle;
  late final List<ExploreArticle> exploreArticle;
  late final List<TrandingArticle> trandingArticle;
  late final Article article;
  late final List<Bulletin> bulletin;
  late final int sId;

  Data.fromJson(Map<String, dynamic> json) {
    news = List.from(json['news']).map((e) => News.fromJson(e)).toList();
    trandingBulletin = List.from(json['trandingBulletin'])
        .map((e) => TrandingBulletin.fromJson(e))
        .toList();
    specialityName = json['specialityName'];
    latestArticle = List.castFrom<dynamic, dynamic>(json['latestArticle']);
    exploreArticle = List.from(json['exploreArticle'])
        .map((e) => ExploreArticle.fromJson(e))
        .toList();
    trandingArticle = List.from(json['trandingArticle'])
        .map((e) => TrandingArticle.fromJson(e))
        .toList();
    article = Article.fromJson(json['article']);
    bulletin =
        List.from(json['bulletin']).map((e) => Bulletin.fromJson(e)).toList();
    sId = json['sId'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['news'] = news.map((e) => e.toJson()).toList();
    _data['trandingBulletin'] =
        trandingBulletin.map((e) => e.toJson()).toList();
    _data['specialityName'] = specialityName;
    _data['latestArticle'] = latestArticle;
    _data['exploreArticle'] = exploreArticle.map((e) => e.toJson()).toList();
    _data['trandingArticle'] = trandingArticle.map((e) => e.toJson()).toList();
    _data['article'] = article.toJson();
    _data['bulletin'] = bulletin.map((e) => e.toJson()).toList();
    _data['sId'] = sId;
    return _data;
  }
}

class News {
  News({
    required this.id,
    required this.title,
    required this.url,
    required this.urlToImage,
    required this.description,
    required this.speciality,
    required this.newsUniqueId,
    required this.trendingLatest,
    required this.publishedAt,
  });
  late final int id;
  late final String title;
  late final String url;
  late final String urlToImage;
  late final String description;
  late final String speciality;
  late final String newsUniqueId;
  late final int trendingLatest;
  late final String publishedAt;

  News.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    url = json['url'];
    urlToImage = json['urlToImage'];
    description = json['description'];
    speciality = json['speciality'];
    newsUniqueId = json['newsUniqueId'];
    trendingLatest = json['trendingLatest'];
    publishedAt = json['publishedAt'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['title'] = title;
    _data['url'] = url;
    _data['urlToImage'] = urlToImage;
    _data['description'] = description;
    _data['speciality'] = speciality;
    _data['newsUniqueId'] = newsUniqueId;
    _data['trendingLatest'] = trendingLatest;
    _data['publishedAt'] = publishedAt;
    return _data;
  }
}

class TrandingBulletin {
  TrandingBulletin({
    required this.id,
    required this.articleTitle,
    required this.redirectLink,
    required this.articleImg,
    required this.articleDescription,
    this.specialityId,
    required this.rewardPoints,
    this.keywordsList,
    this.articleUniqueId,
    required this.articleType,
    this.createdAt,
  });
  late final int id;
  late final String articleTitle;
  late final String redirectLink;
  late final String articleImg;
  late final String articleDescription;
  late final Null specialityId;
  late final int rewardPoints;
  late final Null keywordsList;
  late final Null articleUniqueId;
  late final int articleType;
  late final Null createdAt;

  TrandingBulletin.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    articleTitle = json['articleTitle'];
    redirectLink = json['redirectLink'];
    articleImg = json['articleImg'];
    articleDescription = json['articleDescription'];
    specialityId = null;
    rewardPoints = json['rewardPoints'];
    keywordsList = null;
    articleUniqueId = null;
    articleType = json['articleType'];
    createdAt = null;
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['articleTitle'] = articleTitle;
    _data['redirectLink'] = redirectLink;
    _data['articleImg'] = articleImg;
    _data['articleDescription'] = articleDescription;
    _data['specialityId'] = specialityId;
    _data['rewardPoints'] = rewardPoints;
    _data['keywordsList'] = keywordsList;
    _data['articleUniqueId'] = articleUniqueId;
    _data['articleType'] = articleType;
    _data['createdAt'] = createdAt;
    return _data;
  }
}

class ExploreArticle {
  ExploreArticle({
    required this.id,
    required this.articleTitle,
    required this.redirectLink,
    required this.articleImg,
    required this.articleDescription,
    required this.specialityId,
    required this.rewardPoints,
    required this.keywordsList,
    required this.articleUniqueId,
    required this.articleType,
    required this.createdAt,
  });
  late final int id;
  late final String articleTitle;
  late final String redirectLink;
  late final String articleImg;
  late final String articleDescription;
  late final String specialityId;
  late final int rewardPoints;
  late final String keywordsList;
  late final String articleUniqueId;
  late final int articleType;
  late final String createdAt;

  ExploreArticle.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    articleTitle = json['articleTitle'];
    redirectLink = json['redirectLink'];
    articleImg = json['articleImg'];
    articleDescription = json['articleDescription'];
    specialityId = json['specialityId'];
    rewardPoints = json['rewardPoints'];
    keywordsList = json['keywordsList'];
    articleUniqueId = json['articleUniqueId'];
    articleType = json['articleType'];
    createdAt = json['createdAt'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['articleTitle'] = articleTitle;
    _data['redirectLink'] = redirectLink;
    _data['articleImg'] = articleImg;
    _data['articleDescription'] = articleDescription;
    _data['specialityId'] = specialityId;
    _data['rewardPoints'] = rewardPoints;
    _data['keywordsList'] = keywordsList;
    _data['articleUniqueId'] = articleUniqueId;
    _data['articleType'] = articleType;
    _data['createdAt'] = createdAt;
    return _data;
  }
}

class TrandingArticle {
  TrandingArticle({
    required this.id,
    required this.articleTitle,
    required this.redirectLink,
    required this.articleImg,
    required this.articleDescription,
    required this.specialityId,
    required this.rewardPoints,
    required this.keywordsList,
    required this.articleUniqueId,
    required this.articleType,
    required this.createdAt,
  });
  late final int id;
  late final String articleTitle;
  late final String redirectLink;
  late final String articleImg;
  late final String articleDescription;
  late final String specialityId;
  late final int rewardPoints;
  late final String keywordsList;
  late final String articleUniqueId;
  late final int articleType;
  late final String createdAt;

  TrandingArticle.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    articleTitle = json['articleTitle'];
    redirectLink = json['redirectLink'];
    articleImg = json['articleImg'];
    articleDescription = json['articleDescription'];
    specialityId = json['specialityId'];
    rewardPoints = json['rewardPoints'];
    keywordsList = json['keywordsList'];
    articleUniqueId = json['articleUniqueId'];
    articleType = json['articleType'];
    createdAt = json['createdAt'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['articleTitle'] = articleTitle;
    _data['redirectLink'] = redirectLink;
    _data['articleImg'] = articleImg;
    _data['articleDescription'] = articleDescription;
    _data['specialityId'] = specialityId;
    _data['rewardPoints'] = rewardPoints;
    _data['keywordsList'] = keywordsList;
    _data['articleUniqueId'] = articleUniqueId;
    _data['articleType'] = articleType;
    _data['createdAt'] = createdAt;
    return _data;
  }
}

class Article {
  Article({
    required this.id,
    required this.articleTitle,
    required this.redirectLink,
    required this.articleImg,
    required this.articleDescription,
    required this.specialityId,
    required this.rewardPoints,
    required this.keywordsList,
    this.articleUniqueId,
    required this.articleType,
    required this.createdAt,
  });
  late final int id;
  late final String articleTitle;
  late final String redirectLink;
  late final String articleImg;
  late final String articleDescription;
  late final String specialityId;
  late final int rewardPoints;
  late final String keywordsList;
  late final Null articleUniqueId;
  late final int articleType;
  late final String createdAt;

  Article.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    articleTitle = json['articleTitle'];
    redirectLink = json['redirectLink'];
    articleImg = json['articleImg'];
    articleDescription = json['articleDescription'];
    specialityId = json['specialityId'];
    rewardPoints = json['rewardPoints'];
    keywordsList = json['keywordsList'];
    articleUniqueId = null;
    articleType = json['articleType'];
    createdAt = json['createdAt'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['articleTitle'] = articleTitle;
    _data['redirectLink'] = redirectLink;
    _data['articleImg'] = articleImg;
    _data['articleDescription'] = articleDescription;
    _data['specialityId'] = specialityId;
    _data['rewardPoints'] = rewardPoints;
    _data['keywordsList'] = keywordsList;
    _data['articleUniqueId'] = articleUniqueId;
    _data['articleType'] = articleType;
    _data['createdAt'] = createdAt;
    return _data;
  }
}

class Bulletin {
  Bulletin({
    required this.id,
    required this.articleTitle,
    required this.redirectLink,
    required this.articleImg,
    required this.articleDescription,
    this.specialityId,
    required this.rewardPoints,
    this.keywordsList,
    this.articleUniqueId,
    required this.articleType,
    this.createdAt,
  });
  late final int id;
  late final String articleTitle;
  late final String redirectLink;
  late final String articleImg;
  late final String articleDescription;
  late final Null specialityId;
  late final int rewardPoints;
  late final Null keywordsList;
  late final Null articleUniqueId;
  late final int articleType;
  late final Null createdAt;

  Bulletin.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    articleTitle = json['articleTitle'];
    redirectLink = json['redirectLink'];
    articleImg = json['articleImg'];
    articleDescription = json['articleDescription'];
    specialityId = null;
    rewardPoints = json['rewardPoints'];
    keywordsList = null;
    articleUniqueId = null;
    articleType = json['articleType'];
    createdAt = null;
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['articleTitle'] = articleTitle;
    _data['redirectLink'] = redirectLink;
    _data['articleImg'] = articleImg;
    _data['articleDescription'] = articleDescription;
    _data['specialityId'] = specialityId;
    _data['rewardPoints'] = rewardPoints;
    _data['keywordsList'] = keywordsList;
    _data['articleUniqueId'] = articleUniqueId;
    _data['articleType'] = articleType;
    _data['createdAt'] = createdAt;
    return _data;
  }
}
