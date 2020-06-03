import 'package:flutter/material.dart';
import 'package:tutorial/model/post_model.dart';
import 'package:tutorial/screens/post_detail.dart';
import 'package:tutorial/services/http_service.dart';

class PostsPage extends StatelessWidget {
  final HttpService httpService = HttpService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Posts"),
      ),
      body: FutureBuilder(
        future: httpService.getPosts(),
        builder: (BuildContext context, AsyncSnapshot<List<Post>> snaphost) {
          print(snaphost.hasData);
          if (snaphost.hasData) {
            List<Post> posts = snaphost.data;

            return ListView(
              children: posts
                  .map(
                    (Post post) => ListTile(
                      title: Text(post.title),
                      subtitle: Text("${post.userId}"),
                      onTap: () => Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => PostDetail(
                            post: post,
                          ),
                        ),
                      ),
                    ),
                  )
                  .toList(),
            );
          } else {
//            return Center(child: CircularProgressIndicator());
//            return Center(child: LinearProgressIndicator());
            return Center(child: RefreshProgressIndicator());
          }
        },
      ),
    );
  }
}
