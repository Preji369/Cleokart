import 'homepage.dart';

import 'package:cleokart/pages/maindrawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

class UserHomePage extends StatefulWidget {
  const UserHomePage({super.key});

  @override
  State<UserHomePage> createState() => _UserHomePageState();
}

class _UserHomePageState extends State<UserHomePage> {
  final List ImgUrl = [
    "https://th.bing.com/th/id/R.53ec16a24bfa84aaaea6157de597bec1?rik=uCMwgg85Wg7Y1Q&riu=http%3a%2f%2fwardrobefocus.com%2fwp-content%2fuploads%2f2018%2f03%2f2018-Simple-Winter-Clothes-For-Women-1.jpg&ehk=emh4OYIcrqHQDjnwxqmbzzNFRUsX4XDMxIxaC11WNN8%3d&risl=&pid=ImgRaw&r=0",
    "https://th.bing.com/th/id/OIP.ZIA-WaZY21_j4IpT3Y5FFQHaD6?pid=ImgDet&rs=1",
    "https://res.cloudinary.com/swiggy/image/upload/fl_lossy,f_auto,q_auto/lncslkzktntmlz839ema",
    "https://th.bing.com/th/id/R.2a02ac333e5b8fd8a6a996d0765f474c?rik=MySb5ic5wgADTg&riu=http%3a%2f%2fwww.whatwouldvwear.com%2fwp-content%2fuploads%2f2017%2f05%2fVanessa-Lambert-blogger-behind-What-Would-V-Wear-steps-forward-with-Famous-Footwear-in-her-White-low-top-Converse-shoes-wearing-ripped-denim_7.jpg&ehk=dsIWivegldIZq10uoZTk3UBfgZM9pxIt5V1R0HiDMKY%3d&risl=&pid=ImgRaw&r=0"
  ];
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
              "Home",
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
      // ignore: prefer_const_constructors
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text(
              "Top Deals",
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            // Container(
            //   height: MediaQuery.of(context).size.height,
            //   width: MediaQuery.of(context).size.width,
            //   child: ListView.builder(
            //       scrollDirection: Axis.horizontal,
            //       itemCount: ImgUrl.length,
            //       itemBuilder: (context, index) {
            //         return InkWell(
            //           child: Padding(
            //             padding: const EdgeInsets.all(8.0),
            //             child: Image.network(
            //               ImgUrl[index],
            //             ),
            //           ),
            //           onTap: () {},
            //         );
            //       }),
            // ),
            Padding(
              padding: const EdgeInsets.only(top: 30, right: 200, bottom: 20),
              child: Text(
                "Categories",
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
            Expanded(
              child: GridView.builder(
                  itemCount: 20,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2),
                  itemBuilder: (context, index) {
                    return Container(
                      height: 100,
                      width: 100,
                      color: Colors.amber,
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}