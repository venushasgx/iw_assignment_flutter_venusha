import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:iw_assignment_flutter_venusha/widgets/photoItem.dart';

class AlbumView extends StatefulWidget {
  int albumId = 0;

  AlbumView({Key? key, this.albumId = 0}) : super(key: key);

  @override
  State<AlbumView> createState() => _AlbumViewState();
}

class _AlbumViewState extends State<AlbumView> {
  List<dynamic> photos = [];

  @override
  void initState() {
    super.initState();
    getPhotos();
  }

  Future<void> getPhotos() async {
    String enpoint =
        "https://jsonplaceholder.typicode.com/photos?albumId=${widget.albumId}";

    try {
      http.Response res = await http.get(Uri.parse(enpoint));
      if (res.statusCode == 200) {
        setState(() {
          photos = json.decode(res.body);
        });
      } else {
        print(res.statusCode);
      }
    } catch (err) {
      print('Error: $err');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("View Album"),
      ),
      body: Container(
        child: photos.isEmpty
            ? Center(child: CircularProgressIndicator())
            : ListView.builder(
                itemCount: photos.length,
                itemBuilder: (BuildContext context, index) {
                  return PhotoItem(
                    url: photos[index]['url'],
                  );
                },
              ),
      ),
    );
  }
}
