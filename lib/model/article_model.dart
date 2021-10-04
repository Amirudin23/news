import 'package:telkom_news/model/source_model.dart';

class Article {
  Source? source;
  String? author;
  String? title;
  String? description;
  String? url;
  String? urlToImage;
  String? publishedAt;
  String? content;

  Article(
      {this.source,
      this.author,
      this.title,
      this.description,
      this.url,
      this.urlToImage,
      this.content});

      factory Article.fromJson(Map<String, dynamic> json) {
    return Article(
      author: json["author"] == null ? null : json["author"],
      title: json["title"] == null ? null : json["title"],
      description: json["description"] == null ? null : json["description"],
      url: json["url"] == null ? null : json["url"],
      urlToImage: json["urlToImage"] == null ? null : json["urlToImage"],
      content: json["content"] == null ? null : json["content"],
      source: json["source"] == null ? null : Source.fromJson(json["source"]),
    );
  }
}
