import 'package:flutter/material.dart';

class PhotoItem extends StatelessWidget {
  String url = "";
  PhotoItem({super.key, this.url = ""});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [Image(image: NetworkImage(url))],
    );
  }
}
