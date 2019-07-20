import 'package:flutter/material.dart';
import 'package:flutter_yaimafuni/detail_page.dart';
import 'package:flutter_yaimafuni/model/liner_status.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'やいまふに',
      theme: new ThemeData(primaryColor: Color.fromRGBO(58, 66, 86, 1.0)),
      home: new ListPage(title: 'Statuses'),
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
  List statuses;

  @override
  void initState() {
    statuses = getStatuses();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    /// リストタイトル
    ListTile makeListTile(Status status) => ListTile(
          contentPadding:
              EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
          leading: Container(
            padding: EdgeInsets.only(right: 12.0),
            decoration: new BoxDecoration(
                border: new Border(
                    right: new BorderSide(width: 1.0, color: Colors.white24))),
            child: Icon(Icons.autorenew, color: Colors.white),
          ),
          title: Text(
            status.title,
            style:
                TextStyle(color: Colors.black54, fontWeight: FontWeight.bold),
          ),
          subtitle: Row(
            children: <Widget>[
//              Expanded(
//                  flex: 1,
//                  child: Container(
//                    // tag: 'hero',
////                    child: LinearProgressIndicator(
////                        backgroundColor: Color.fromRGBO(209, 224, 224, 0.2),
////                        value: lesson.indicatorValue,
////                        valueColor: AlwaysStoppedAnimation(Colors.green)),
//                  )),
              Expanded(
                flex: 4,
                child: Padding(
                    padding: EdgeInsets.only(left: 0.0),
                    child: Text(status.level,
                        style: TextStyle(color: Colors.black45))),
              )
            ],
          ),
          trailing: Icon(Icons.keyboard_arrow_right,
              color: Colors.black54, size: 30.0),
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => DetailPage(status: status)));
          },
        );

    /// カード
    Card makeCard(Status status) => Card(
          elevation: 8.0,
          margin: new EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
          child: Container(
            decoration: BoxDecoration(color: Colors.white),
            child: makeListTile(status),
          ),
        );

    /// ボディ
    final makeBody = Container(
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemCount: statuses.length,
        itemBuilder: (BuildContext context, int index) {
          return makeCard(statuses[index]);
        },
      ),
    );

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
);
