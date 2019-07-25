import 'package:flutter/material.dart';
import 'package:flutter_yaimafuni/model/liner_status.dart';

class DetailPage extends StatelessWidget {
  final Status status;

  DetailPage({Key key, this.status}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text("西表島 上原航路"),
          backgroundColor: Color.fromRGBO(76, 175, 202, 1.0),
          bottom: TabBar(
            indicatorColor: Colors.orange,
            tabs: <Widget>[
              Tab(
                text: "安栄観光",
              ),
              Tab(
                text: "八重山観光\nフェリー",
              ),
            ],
          ),
        ),
        body: TabBarView(children: <Widget>[
          mainPage,
          Container(
            color: Colors.orange,
          ),
        ]),
      ),
    ));
  }
}

/// タイトル
final topAppBar = AppBar(
  elevation: 0.1,
  backgroundColor: Color.fromRGBO(76, 175, 202, 1.0),
  title: Text(titleText),
);

/// ボディ
final mainPage = SingleChildScrollView(
  scrollDirection: Axis.vertical,
  padding: EdgeInsets.all(0.0),
  child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        SpaceBox.height(8),
        mainStatus,
        SpaceBox.height(8),
        timeTable
      ]),
);

/// メインステータス
final mainStatus = Card(
    elevation: 8.0,
    margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
    child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              "西表島航路",
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.black87,
              ),
            ),
          ),
          Expanded(
              flex: 1,
              child: Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "通常運行",
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.black87,
                    ),
                  ),
                ),
              )),
//                    new Expanded()
        ]));

/// 時刻表
final timeTable = Card(
    elevation: 8.0,
    margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
    child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Expanded(
              child: Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "時刻表",
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.black87,
                    ),
                  ),
                ),
              )),
        ]));

class SpaceBox extends SizedBox {
  SpaceBox({double width = 8, double height = 8})
      : super(width: width, height: height);

  SpaceBox.width([double value = 8]) : super(width: value);

  SpaceBox.height([double value = 8]) : super(height: value);
}

const titleText = "やいまふに";
