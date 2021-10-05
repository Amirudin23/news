import 'package:flutter/material.dart';
import 'package:telkom_news/model/article_model.dart';
import 'package:telkom_news/serviece/apiservice.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ApiService client = ApiService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Telkom News",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
      ),
      body: FutureBuilder(
          future: client.getArticle(),
          builder:
              (BuildContext context, AsyncSnapshot<List<Article>> snapshot) {
            if (snapshot.hasData) {
              List<Article> article = snapshot.data!;
              return ListView.builder(
                  itemCount: article.length, //add
                  itemBuilder: (context, index) =>
                      customListTile(article[index], context));
            }
            return Center();
          }),
    );
  }
 //add
  Widget customListTile(Article article, BuildContext context) {
    return Container();
  }
}
