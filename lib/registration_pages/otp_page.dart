import 'package:cleokart/registration_pages/otp_success.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class OtpPage extends StatelessWidget {
  //const OtpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 20, 2, 57),
        elevation: 0,
        title: Text(
          "OTP",
          style: TextStyle(color: Colors.white, fontSize: 30),
        ),
        centerTitle: true,
      ),
      backgroundColor: Colors.white,
      body: Container(
        color: Color.fromARGB(255, 20, 2, 57),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 200, left: 10),
                  child: SizedBox(
                    width: 68,
                    height: 64,
                    child: Card(
                      color: Color.fromARGB(255, 110, 134, 173),
                      child: TextFormField(
                        onChanged: (value) {
                          if (value.length == 1) {
                            FocusScope.of(context).nextFocus();
                          }
                        },
                        textAlign: TextAlign.center,
                        onSaved: (pin1) {},
                        cursorColor: Colors.white,
                        style: Theme.of(context).textTheme.headline6,
                        keyboardType: TextInputType.number,
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(1),
                          FilteringTextInputFormatter.digitsOnly
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 200, left: 10),
                  child: SizedBox(
                    width: 68,
                    height: 64,
                    child: Card(
                      color: Color.fromARGB(255, 110, 134, 173),
                      child: TextFormField(
                        onChanged: (value) {
                          if (value.length == 1) {
                            FocusScope.of(context).nextFocus();
                          }
                        },
                        textAlign: TextAlign.center,
                        onSaved: (pin2) {},
                        cursorColor: Colors.white,
                        style: Theme.of(context).textTheme.headline6,
                        keyboardType: TextInputType.number,
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(1),
                          FilteringTextInputFormatter.digitsOnly
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 200, left: 10),
                  child: SizedBox(
                    width: 68,
                    height: 64,
                    child: Card(
                      color: Color.fromARGB(255, 110, 134, 173),
                      child: TextFormField(
                        onChanged: (value) {
                          if (value.length == 1) {
                            FocusScope.of(context).nextFocus();
                          }
                        },
                        textAlign: TextAlign.center,
                        onSaved: (pin3) {},
                        cursorColor: Colors.white,
                        style: Theme.of(context).textTheme.headline6,
                        keyboardType: TextInputType.number,
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(1),
                          FilteringTextInputFormatter.digitsOnly
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 200, left: 10, right: 10),
                  child: SizedBox(
                    width: 68,
                    height: 64,
                    child: Card(
                      color: Color.fromARGB(255, 110, 134, 173),
                      child: TextFormField(
                        onChanged: (value) {
                          if (value.length == 1) {
                            FocusScope.of(context).nextFocus();
                          }
                        },
                        textAlign: TextAlign.center,
                        cursorColor: Colors.white,
                        onSaved: (pin4) {},
                        style: Theme.of(context).textTheme.headline6,
                        keyboardType: TextInputType.number,
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(1),
                          FilteringTextInputFormatter.digitsOnly
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Resend OTP after 00.00",
                style: TextStyle(color: Colors.white),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20, top: 350),
                  child: ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        "Resend",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, top: 350),
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => OtpSuccessfulPage(),
                            ));
                      },
                      child: Text(
                        "Confirm",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      )),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
