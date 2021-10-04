import 'dart:convert';
import 'package:http/http.dart';
import 'package:telkom_news/model/article_model.dart';


class ApiService {

  final endPoint = "https://newsapi.org/v2/top-headlines?country=us&category=business&apiKey=15eae1814a164418bda00f1e5691d92c";
  

  Future<List<Article>> getArticle() async {
    Response res = await get(Uri.parse(endPoint));
    if(res.statusCode == 200){
      Map<String, dynamic> json = jsonDecode(res.body);
      List<dynamic> body = json['articles'];

      List<Article> articles = body.map((dynamic item) => Article.fromJson(item)).toList();
      return articles;
    } else {
      throw ("Artikel gagal dimuat");
    }
  }
}