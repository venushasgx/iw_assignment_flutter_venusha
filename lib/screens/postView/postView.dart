import 'package:flutter/material.dart';

class PostView extends StatelessWidget {
  final String title;
  final String body;

  const PostView({super.key, this.title = "", this.body = ""});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Text(title),
          ), Text(body)],
        ),
      ),
    );
  }
}
