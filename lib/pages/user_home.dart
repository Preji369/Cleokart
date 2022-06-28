import 'package:cleokart/pages/image_detail_screen.dart';
import 'package:cleokart/pages/maindrawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

class UserHomePage extends StatefulWidget {
  // const UserHomePage({super.key});

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

  final List GridImages = [
    "https://res.cloudinary.com/swiggy/image/upload/f_auto,q_auto,fl_lossy/lkn0extnvjywfts4q7gw",
    " https://th.bing.com/th/id/OIP.bUBmGW7-YKKXZ1x-itSnPwHaN4?w=178&h=334&c=7&r=0&o=5&pid=1.7",
    "https://g.foolcdn.com/editorial/images/160552/grocery-bag-full-of-fresh-produce.jpg",
    "https://th.bing.com/th/id/OIP.m_hfkld63CXQS_vfEAAOjwHaD8?w=285&h=180&c=7&r=0&o=5&pid=1.7",
    "https://www.teahub.io/photos/full/279-2793369_beauty-parlour-wallpaper-hd.jpg",
    "https://res.cloudinary.com/swiggy/image/upload/fl_lossy,f_auto,q_auto/ed6wixm0hoohvxg1kk9j"
        "https://th.bing.com/th/id/R.46a82a2dab8967ac1da346b0bf4ef291?rik=G%2bkK0IXbg6dLGw&riu=http%3a%2f%2fwww.retiregetrich.com%2fassets%2fUploads%2fbasics-of-investing.jpg&ehk=tXb0ZWfHCkWeGZN9rQmiksqbJVUMtNMk4nD5dFdeuAo%3d&risl=&pid=ImgRaw&r=0&sres=1&sresct=1",
    "https://drkarenwolman.com/wp-content/uploads/2017/03/mobile-devices.jpg",
    "https://www.ourmarket24.com/images/detailed/3/ll_abjn-px.jpg",
    "https://www.homeanddecor.com.sg/sites/default/files/blog/2016/03/32682-img-4405.jpg",
    "https://kiwinurseries.com/wp-content/uploads/2020/04/money-plant-overview.jpg",
    "https://wallpapercave.com/wp/wp2004258.jpg",
    "https://advancemed.com.au/wp-content/uploads/2019/02/Depositphotos_51131777_xl-2015-1.jpg",
    "https://th.bing.com/th/id/OIP.KyW2HhbyknDiZrFXomZuhwHaE8?pid=ImgDet&rs=1",
    "https://images.fleximize.com/images/starting-a-photography-business-dk-15.01.19-529739-u.jpg",
    "https://th.bing.com/th/id/OIP.oPxxZSqoQJ9Qshw6YStsLgHaEK?pid=ImgDet&w=185&h=104&c=7",
    "https://th.bing.com/th/id/OIP.onBOUIrWPOEamsr7PKFHzgHaEK?pid=ImgDet&rs=1",
    "https://th.bing.com/th/id/R.ea57001dcf2aa69de75665c64e403332?rik=gmUHci4rGXcirg&riu=http%3a%2f%2freliabledelivery.com%2fwp-content%2fuploads%2f2018%2f04%2fHappy-Delivery.jpg&ehk=bknanhgX8Y4N7cWpJM0QzZBkdpjt7qWOgY0Spwl%2bEko%3d&risl=&pid=ImgRaw&r=0",
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
            Container(
              height: 200,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: ImgUrl.length,
                  itemBuilder: (context, index) {
                    return InkWell(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.network(
                          ImgUrl[index],
                        ),
                      ),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ImageDetailScreen(
                                  ImgUrl[index], GridImages[index]),
                            ));
                      },
                    );
                  }),
            ),
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
            Container(
              height: 300,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: GridView.builder(
                    itemCount: GridImages.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisSpacing: 20,
                        mainAxisSpacing: 20,
                        crossAxisCount: 2),
                    itemBuilder: (context, index) {
                      return InkWell(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.network(
                            GridImages[index],
                          ),
                        ),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ImageDetailScreen(
                                    GridImages[index], ImgUrl[index]),
                              ));
                        },
                      );
                    }),
              ),
            ),
            // Container(
            //   height: 300,
            //   margin: const EdgeInsets.only(top: 50),
            //   child: GridView.builder(
            //       itemCount: 20,
            //       gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            //           crossAxisSpacing: 2, crossAxisCount: 2),
            //       itemBuilder: (context, index) {
            //         return Container(
            //           height: 100,
            //           width: 100,
            //           color: Colors.amber,
            //         );
            //       }),
            // ),
          ],
        ),
      ),
    );
  }
}
