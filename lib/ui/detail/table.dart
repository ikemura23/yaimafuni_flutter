import 'package:flutter/material.dart';

/// 時刻表
final timeTable = Card(
    elevation: 8.0,
    margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
    child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[_tableTitle, _header]));

/// タイトル
final _tableTitle = Container(
  padding: EdgeInsets.all(8),
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
          padding: EdgeInsets.all(8.0),
          color: Colors.indigo,
          child: Text("石垣発"),
        ),
      ),
      Expanded(
        child: Container(
          padding: EdgeInsets.all(8.0),
          color: Colors.indigo,
          child: Text("西表発"),
        ),
      ),
    ]);
