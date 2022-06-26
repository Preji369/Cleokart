import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

class DrawerScreen extends StatefulWidget {
  const DrawerScreen({super.key});

  @override
  State<DrawerScreen> createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: new ListView(
        children: [
          new UserAccountsDrawerHeader(
              currentAccountPicture: ClipOval(
                child: Image.network(
                  "https://th.bing.com/th/id/R.8315161cc6a45c1ad01f2204df131985?rik=OwVfcFkx2d3BEg&riu=http%3a%2f%2fcdn8.dissolve.com%2fp%2fD25_154_192%2fD25_154_192_600.jpg&ehk=RI1qB9KMTuL5l9i%2fxT0P%2f1VsvABCBrHFpTzg8S6Atks%3d&risl=&pid=ImgRaw&r=0",
                  fit: BoxFit.cover,
                  height: 100,
                  width: 60,
                ),
              ),
              accountName: Text(
                "Name",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              accountEmail: Text(
                "e-mail.com",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              )),
          ListTile(
            leading: Icon(Icons.person),
            title: Text(
              "Profile",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                  color: Color.fromARGB(255, 20, 2, 57)),
            ),
          ),
          ListTile(
            leading: Icon(Icons.shopping_cart_checkout),
            title: Text(
              "My Orders",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                  color: Color.fromARGB(255, 20, 2, 57)),
            ),
          ),
          ListTile(
            leading: Icon(Icons.wallet),
            title: Text(
              "My wallet",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                  color: Color.fromARGB(255, 20, 2, 57)),
            ),
          ),
          ListTile(
            leading: Icon(Icons.phone_callback_outlined),
            title: Text(
              "Customer Service",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                  color: Color.fromARGB(255, 20, 2, 57)),
            ),
          ),
          ListTile(
            leading: Icon(Icons.logout_outlined),
            title: Text(
              "Logout",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                  color: Color.fromARGB(255, 20, 2, 57)),
            ),
          ),
        ],
      ),
    );
  }
}
