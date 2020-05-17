import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class ShowImage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Show Image Example'),
        ),
        body: new Column(
          children: <Widget>[
            new Row(
              children: <Widget>[
                Image.asset("images/paradise.jpg", width: 50, height: 100),
                Image.asset("images/paradise.jpg", width: 20, height: 40),
                Image.asset("images/paradise.jpg", width: 50, height: 100),
              ], mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            ),
            Image.asset("images/paradise.jpg"),
          ],
        ));
  }
}
