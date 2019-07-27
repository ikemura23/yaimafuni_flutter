import 'package:flutter/material.dart';

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
