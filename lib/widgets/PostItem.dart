import 'package:flutter/material.dart';
import 'package:iw_assignment_flutter_venusha/screens/postView/postView.dart';
import 'package:iw_assignment_flutter_venusha/screens/posts/posts.dart';

class PostItem extends StatefulWidget {
  String title = "";
  String description = "";
  int postId = 0;

  PostItem(
      {super.key, this.title = "", this.description = "", this.postId = 0});

  @override
  State<PostItem> createState() => _PostItemState();
}

class _PostItemState extends State<PostItem> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: Text(widget.title),
          subtitle: Text(widget.description),
        ),
        ElevatedButton(
            onPressed: () {
               Navigator.push(context, MaterialPageRoute(builder: (context)=>PostView(title: widget.title, body: widget.description,)));
            },
            child: Text("View")),
        Divider()
      ],
    );
  }
}

class Home {
}
