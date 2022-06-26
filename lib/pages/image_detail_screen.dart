import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ImageDetailScreen extends StatefulWidget {
  ImageDetailScreen(this.imageUrl, {Key? key}) : super(key: key);

  String imageUrl;

  @override
  State<ImageDetailScreen> createState() => _ImageDetailScreenState();
}

class _ImageDetailScreenState extends State<ImageDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Image.network(widget.imageUrl),
          Text("Heading"),
          Text("Headinwefnwekfnewjfnjewnfjkewfjewfkjewnfkjewnfg"),
        ],
      ),
    );
  }
}
