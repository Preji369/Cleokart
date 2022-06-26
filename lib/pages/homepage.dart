import 'package:cleokart/pages/cart.dart';
import 'package:cleokart/pages/maindrawer.dart';
import 'package:cleokart/pages/shop.dart';
import 'package:cleokart/pages/user_home.dart';
import 'package:cleokart/pages/wishlist.dart';
import 'package:flutter/material.dart';

class CategoriesPage extends StatefulWidget {
  const CategoriesPage({super.key});

  @override
  State<CategoriesPage> createState() => _CategoriesPageState();
}

class _CategoriesPageState extends State<CategoriesPage> {
  int _selectedindex = 0;
  void _navigateBottomNavBar(int index) {
    setState(() {
      _selectedindex = index;
    });
  }

  final List<Widget> _children = [
    UserHomePage(),
    ShopPage(),
    WishlistPage(),
    CartPage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // drawer: DrawerScreen(),
        body: _children[_selectedindex],
        // backgroundColor: Color.fromARGB(255, 20, 2, 57),
        bottomNavigationBar: BottomNavigationBar(
            elevation: 3,
            selectedItemColor: Color.fromARGB(255, 20, 2, 57),
            unselectedItemColor: Colors.amber,
            currentIndex: _selectedindex,
            onTap: _navigateBottomNavBar,
            // type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
              BottomNavigationBarItem(icon: Icon(Icons.shop), label: 'Shops'),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.favorite,
                    color: Colors.red,
                  ),
                  label: 'Wishlist'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.shopping_cart), label: 'Cart'),
            ]));
  }
}
