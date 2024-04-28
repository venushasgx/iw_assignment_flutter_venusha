import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:iw_assignment_flutter_venusha/widgets/PostItem.dart';

class Posts extends StatefulWidget {
  const Posts({super.key});

  @override
  State<Posts> createState() => _PostsState();
}

class _PostsState extends State<Posts> {
  List<dynamic> posts = [];

  @override
  void initState() {
    super.initState();
    getPosts();
  }

  Future<void> getPosts() async {
    String enpoint = "https://jsonplaceholder.typicode.com/posts?&_limit=5";

    try {
      http.Response res = await http.get(Uri.parse(enpoint));
      if (res.statusCode == 200) {
        //Map<String, dynamic> resBody = json.decode(res.body);
        setState(() {
          posts = json.decode(res.body);
        });

        //  print(posts);
      } else {
        print(res.statusCode);
      }
    } catch (err) {
      print('Error: $err');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: posts.isEmpty
          ? Center(child: CircularProgressIndicator())
          : ListView.builder(
              itemCount: posts.length,
              itemBuilder: (BuildContext context, index) {
                return PostItem(
                    title: posts[index]['title'],
                    description: posts[index]['body']);
              },
            ),
    );
  }
}
