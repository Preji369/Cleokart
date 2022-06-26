import 'package:cleokart/pages/homepage.dart';
import 'package:flutter/material.dart';

class OtpSuccessfulPage extends StatefulWidget {
  const OtpSuccessfulPage({super.key});

  @override
  State<OtpSuccessfulPage> createState() => _OtpSuccessfulPageState();
}

class _OtpSuccessfulPageState extends State<OtpSuccessfulPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              elevation: 3,
              primary: Colors.white,
            ),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => CategoriesPage()));
            },
            child: Text(
              "Successfully Logged In",
              style: TextStyle(
                  color: Color.fromARGB(255, 20, 2, 57),
                  fontWeight: FontWeight.bold,
                  fontSize: 25),
            )),
      ),
    );
  }
}
