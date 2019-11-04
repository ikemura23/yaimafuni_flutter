import 'package:flutter/material.dart';
import 'package:flutter_yaimafuni/ui/detail/detail_screen.dart';
import 'package:flutter_yaimafuni/model/liner_status.dart';

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

Widget createListRow(String portName, BuildContext context) => Container(
    margin: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
    child: InkWell(
        onTap: () {
          var status = getStatuses();
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => DetailScreen(status: status[0])));
        },
        child: Row(
          // 1行目
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            // 1
            Expanded(
              flex: 1,
              child:
                  Align(alignment: Alignment.centerLeft, child: Text(portName)),
            ),
            // 2
            Expanded(
              flex: 1,
              child: _buildButtonColumn("安栄観光", "通常運行"),
            ),
            // 3
            Expanded(
              flex: 1,
              child: _buildButtonColumn("八観フェ", "通常運行"),
            ),
          ],
        )));
