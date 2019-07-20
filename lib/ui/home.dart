import 'package:flutter/material.dart';

final homeStatus = SingleChildScrollView(
  scrollDirection: Axis.vertical,
  padding: EdgeInsets.all(0.0),
  child: Card(
    elevation: 8.0,
    margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
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
                Icon(Icons.directions_boat,
                    color: Color(0xFF000000), size: 48.0),
                Text(
                  "運行情報",
                  style: TextStyle(
                      fontSize: 12.0,
                      color: Color(0xFF000000),
                      fontWeight: FontWeight.w200,
                      fontFamily: "Roboto"),
                )
              ]),

          /// 2行目、竹富島
          createListRow(),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
          ),
          Row(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.center,
                      )
                    ])
              ]),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
          )
        ]),
  ),
);

// リスト行の作成
Widget _buildButtonColumn(String label, String status) {
  return Column(
    mainAxisSize: MainAxisSize.min,
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      Container(
        margin: EdgeInsets.only(top: 8.0),
        child: Text(
          label,
          style: TextStyle(fontSize: 12.0, fontWeight: FontWeight.w400),
        ),
      ),
      Container(
        margin: EdgeInsets.only(top: 8.0),
        decoration: BoxDecoration(
          color: Colors.indigo,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(2.0),
            topRight: Radius.circular(2.0),
            bottomLeft: Radius.circular(2.0),
            bottomRight: Radius.circular(2.0),
          ),
        ),
        padding: EdgeInsets.all(4.0),
        child: Text(
          status,
          style: TextStyle(
              fontSize: 12.0, color: Colors.white, fontWeight: FontWeight.w400),
        ),
      ),
    ],
  );
}

Widget createListRow() => Container(
    margin: const EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
    child: Row(
      // 1行目
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        // 1
        Expanded(
          flex: 1,
          child: Align(alignment: Alignment.center, child: Text("竹富島航路")),
        ),
        // 2
        Expanded(
          flex: 2,
          child: _buildButtonColumn("安栄観光", "通常運行"),
        ),
        // 3
        Expanded(
          flex: 2,
          child: _buildButtonColumn("八観フェ", "通常運行"),
        ),
      ],
    ));
