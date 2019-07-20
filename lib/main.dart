import 'package:flutter/material.dart';
import 'package:flutter_yaimafuni/model/lesson.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'やいまふに',
      theme: new ThemeData(primaryColor: Color.fromRGBO(58, 66, 86, 1.0)),
      home: new ListPage(title: 'Lessons'),
    );
  }
}

/*
 * リスト
 */
class ListPage extends StatefulWidget {
  ListPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _ListPageState createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  List lessons;

  @override
  void initState() {
    lessons = getLessons();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(76, 175, 202, 1.0),
      appBar: topAppBar,
      body: makeBody,
//      bottomNavigationBar: makeBottom,
    );
  }
}

/// タイトル
final topAppBar = AppBar(
  elevation: 0.1,
  backgroundColor: Color.fromRGBO(76, 175, 202, 1.0),
  title: Text("やいまふに"),
//  actions: <Widget>[
//    IconButton(
//      icon: Icon(Icons.list),
//      onPressed: () {},
//    )
//  ],
);

/// ボディ
final makeBody = Container(
  child: ListView.builder(
    scrollDirection: Axis.vertical,
    shrinkWrap: true,
    itemCount: 7,
    itemBuilder: (BuildContext context, int index) {
      return makeCard;
    },
  ),
);

/// カード
final makeCard = Card(
  elevation: 8.0,
  margin: new EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
  child: Container(
    decoration: BoxDecoration(color: Colors.white),
    child: makeListTile,
  ),
);

/// リストタイトル
final makeListTile = ListTile(
    contentPadding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
    leading: Container(
      padding: EdgeInsets.only(right: 12.0),
      decoration: new BoxDecoration(
          border: new Border(
              right: new BorderSide(width: 1.0, color: Colors.grey))),
      child: Icon(Icons.autorenew, color: Colors.grey), //todo アイコンを動的に変更
    ),
    title: Text(
      "XX航路",
      style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
    ),
    // subtitle: Text("Intermediate", style: TextStyle(color: Colors.white)),

    subtitle: Text("通常運行", style: TextStyle(color: Colors.grey)),
    trailing:
        Icon(Icons.keyboard_arrow_right, color: Colors.white, size: 30.0));

///// ボトムナビバー
//final makeBottom = Container(
//  height: 55.0,
//  child: BottomAppBar(
//    color: Color.fromRGBO(58, 66, 86, 1.0),
//    child: Row(
//      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//      children: <Widget>[
//        IconButton(
//          icon: Icon(Icons.home, color: Colors.white),
//          onPressed: () {},
//        ),
//        IconButton(
//          icon: Icon(Icons.blur_on, color: Colors.white),
//          onPressed: () {},
//        ),
//        IconButton(
//          icon: Icon(Icons.hotel, color: Colors.white),
//          onPressed: () {},
//        ),
//        IconButton(
//          icon: Icon(Icons.account_box, color: Colors.white),
//          onPressed: () {},
//        )
//      ],
//    ),
//  ),
//);
