import 'package:flutter/material.dart';
import 'package:flutter_yaimafuni/detail_page.dart';
import 'package:flutter_yaimafuni/model/liner_status.dart';
import 'package:flutter_yaimafuni/ui/home.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: titleText,
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

    return Scaffold(
      backgroundColor: Color.fromRGBO(76, 175, 202, 1.0),
      appBar: topAppBar,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        padding: EdgeInsets.all(0.0),
        child: Card(
          elevation: 8.0,
          margin: EdgeInsets.symmetric(horizontal: 16.0, vertical: 6.0),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                // １行目、タイトル
                Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Icon(Icons.directions_boat,
                            color: Color(0xFF000000), size: 24.0),
                      ),
                      Text(
                        "運行情報",
                        style: TextStyle(
                            fontSize: 12.0,
                            color: Color(0xFF000000),
                            fontWeight: FontWeight.w200,
                            fontFamily: "Roboto"),
                      )
                    ]),
                Divider(color: Colors.grey),

                /// 2行目
                createListRow("竹富島航路",context),
                Divider(color: Colors.grey),

                /// 3行目
                createListRow("小浜島航路",context),
                Divider(color: Colors.grey),

                /// 4行目
                createListRow("黒島航路",context),
                Divider(color: Colors.grey),

                /// 5行目
                createListRow("西表島 大原航路",context),
                Divider(color: Colors.grey),

                /// 6行目
                createListRow("西表島 上原航路",context),
                Divider(color: Colors.grey),

                /// 7行目
                createListRow("鳩間島航路",context),
                Divider(color: Colors.grey),

                /// 8行目
                createListRow("波照間島航路",context),
              ]),
        ),
      ),
    );
  }
}

/// タイトル
final topAppBar = AppBar(
  elevation: 0.1,
  backgroundColor: Color.fromRGBO(76, 175, 202, 1.0),
  title: Text(titleText),
);

const titleText = "やいまふに";
