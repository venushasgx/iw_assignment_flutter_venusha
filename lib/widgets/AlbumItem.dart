import 'package:flutter/material.dart';
import 'package:iw_assignment_flutter_venusha/screens/albumView/albumView.dart';
import 'package:iw_assignment_flutter_venusha/screens/postView/postView.dart';

class AlbumItem extends StatefulWidget {
  String title = "";
  String description = "";
  int albumId = 0;

  AlbumItem(
      {super.key, this.title = "", this.description = "", this.albumId = 0});

  @override
  State<AlbumItem> createState() => _AlbumItemState();
}

class _AlbumItemState extends State<AlbumItem> {
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
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => AlbumView(
                            albumId: widget.albumId,
                          )));
            },
            child: Text("View Photos")),
        Divider()
      ],
    );
  }
}
