import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class ShowNetworkImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Show Network Image Example'),
        ),
        body: Center(
          child: new Image.network(
            "https://picsum.photos/300/600",
          ),
        ));
  }
}
