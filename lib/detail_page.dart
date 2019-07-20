import 'package:flutter/material.dart';
import 'package:flutter_yaimafuni/model/liner_status.dart';

class DetailPage extends StatelessWidget {
  final Status status;

  DetailPage({Key key, this.status}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final levelIndicator = Container(
      child: Container(
        child: LinearProgressIndicator(
            backgroundColor: Color.fromRGBO(209, 224, 224, 0.2),
            value: status.indicatorValue,
            valueColor: AlwaysStoppedAnimation(Colors.green)),
      ),
    );

    final mainPage = Container(
      color: Colors.yellow,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Container(
            // A fixed-height child.
            color: const Color(0xff808000), // Yellow
            height: 120.0,
          ),
          Container(
            // Another fixed-height child.
            color: const Color(0xff008000), // Green
            height: 120.0,
          ),
        ],
      ),
    );

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

const titleText = "やいまふに";
