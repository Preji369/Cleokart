import 'package:cleokart/model/product.dart';
import 'package:cleokart/pages/maindrawer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ImageDetailScreen extends StatefulWidget {
  ImageDetailScreen(this.product, {Key? key}) : super(key: key);

  Product product;

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
        child: Column(
          children: [
            widget.product.isUrl == true
                ? Image.network(widget.product.imageUrl)
                : Image.asset(widget.product.imageUrl),
            Text(
              widget.product.imageDescription,
              style: TextStyle(fontSize: 24, color: Colors.white),
            ),
            Text(
              widget.product.price.toString(),
              style: TextStyle(fontSize: 24, color: Colors.white),
            ),
            Expanded(
              child: GridView.builder(
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
                  }),
            )
          ],
        ),
      ),
    );
  }
}
