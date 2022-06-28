import 'package:cleokart/pages/maindrawer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ImageDetailScreen extends StatefulWidget {
  ImageDetailScreen(this.imageUrl, this.GridImages, {Key? key})
      : super(key: key);

  String imageUrl;
  String GridImages;

  @override
  State<ImageDetailScreen> createState() => _ImageDetailScreenState();
}

class _ImageDetailScreenState extends State<ImageDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerScreen(),
      backgroundColor: Color.fromARGB(255, 20, 2, 57),
      extendBodyBehindAppBar: false,
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 20, 2, 57),
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Catogories",
              style: TextStyle(color: Colors.white, fontSize: 30),
            ),
          ],
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search,
              color: Colors.white,
            ),
            color: Colors.white,
          ),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.shopping_cart,
                color: Colors.white,
              ))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 80),
        child: Container(
          height: 300,
          child: Column(
            children: [
              Image.network(widget.imageUrl),
              GridView.builder(
                  itemCount: 20,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2),
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Container(
                        color: Colors.pink[100],
                      ),
                    );
                  })
            ],
          ),
        ),
      ),
    );
  }
}
