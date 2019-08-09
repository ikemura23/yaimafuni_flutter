import 'package:flutter/material.dart';

/// 時刻表
final timeTable = Card(
    elevation: 8.0,
    margin: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
    child:
        Column(crossAxisAlignment: CrossAxisAlignment.start, children: <Widget>[
      _tableTitle,
      _header,
      _listItem,
      _listItem,
      _listItem,
      _listItem,
      _listItem,
      _listItem,
      _listItem,
      _listItem,
    ]));

/// タイトル
final _tableTitle = Container(
  padding: EdgeInsets.all(16),
  child: Text(
    "時刻表",
  ),
);

/// ヘッダー
final _header = Row(
    mainAxisAlignment: MainAxisAlignment.center,
    mainAxisSize: MainAxisSize.min,
    children: <Widget>[
      Expanded(
        child: Container(
          padding: EdgeInsets.all(16.0),
          color: Colors.indigo,
          child: Text(
            "石垣発",
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
      Expanded(
        child: Container(
          padding: EdgeInsets.all(16.0),
          color: Colors.indigo,
          child: Text(
            "西表発",
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    ]);

final _listItem = Row(
  mainAxisAlignment: MainAxisAlignment.center,
  children: <Widget>[
    Expanded(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        child: Text("10:00"),
      ),
    ),
    Expanded(
      child: Container(
        padding: EdgeInsets.all(8),
        child: Text(
          "通常運行",
          style: TextStyle(color: Colors.indigo),
        ),
      ),
    ),
    VerticalDivider(
      color: Colors.blue,
    ),
    Expanded(
      child: Container(
        padding: EdgeInsets.all(8),
        child: Text("10:00"),
      ),
    ),
    Expanded(
      child: Container(
        padding: EdgeInsets.all(8),
        child: Text(
          "通常運行",
          style: TextStyle(color: Colors.indigo),
        ),
      ),
    ),
    Divider(
      color: Colors.grey,
    ),
  ],
);
