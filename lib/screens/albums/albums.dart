import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:iw_assignment_flutter_venusha/widgets/AlbumItem.dart';
import 'package:iw_assignment_flutter_venusha/widgets/PostItem.dart';

class Albums extends StatefulWidget {
  const Albums({super.key});

  @override
  State<Albums> createState() => _AlbumsState();
}

class _AlbumsState extends State<Albums> {
  List<dynamic> albums = [];

  @override
  void initState() {
    super.initState();
    getAlbums();
  }

  Future<void> getAlbums() async {
    
    String enpoint = "https://jsonplaceholder.typicode.com/posts";

    try {
      http.Response res = await http.get(Uri.parse(enpoint));
      if (res.statusCode == 200) {
        setState(() {
          albums = json.decode(res.body);
        });
      } else {
        print(res.statusCode);
      }
    } catch (err) {
      print('Error: $err');
    }
  }

  @override
  @override
  Widget build(BuildContext context) {
    return Container(
      child: albums.isEmpty
          ? Center(child: CircularProgressIndicator())
          : ListView.builder(
              itemCount: albums.length,
              itemBuilder: (BuildContext context, index) {
                return AlbumItem(
                  title: albums[index]['title'],
                  description: albums[index]['body'],
                  albumId: albums[index]['id'],
                );
              },
            ),
    );
  }
}
