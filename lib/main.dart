import 'package:flutter/material.dart';
import 'package:tutorial/screens/posts.dart';
import 'package:tutorial/screens/random_words.dart';
import 'package:tutorial/screens/show_image.dart';
import 'package:tutorial/screens/show_network_image.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Home',
      debugShowCheckedModeBanner: false,
      darkTheme: ThemeData.dark(),
      theme: ThemeData(
        primarySwatch: Colors.deepPurple
      ),
      home: LinkPage(),
    );
  }
}

class LinkPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Link Page'),
      ),
      body: Center(
          child: new Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          new RaisedButton(
            child: Text('Open RandomWords'),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => RandomWords()),
              );
            },
          ),
          new RaisedButton(
            child: Text('Open Show Image'),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ShowImage()),
              );
            },
          ),
          new RaisedButton(
            child: Text('Open Show Network Image'),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ShowNetworkImage()),
              );
            },
          ),
          new RaisedButton(
            child: Text('Open PostsPage'),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PostsPage()),
              );
            },
          )
        ],
      )),
    );
  }
}
