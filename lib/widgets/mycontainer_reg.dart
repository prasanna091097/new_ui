import 'package:flutter/material.dart';
import 'package:ui_app/screens/banking.dart';
import 'package:ui_app/screens/notification.dart';
import 'package:ui_app/screens/otp_screen.dart';
import 'package:ui_app/widgets/description.dart';

class MyContainer extends StatelessWidget {
  const MyContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: MediaQuery.of(context).size.width * 0.8,
        child: Column(children: [
          Row(
            children: [
              const Icon(
                Icons.message,
                color: Color.fromARGB(255, 109, 102, 102),
              ),
              const SizedBox(
                width: 20,
              ),
              MaterialButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const OtpScreen()));
                  },
                  child: const Text(
                    "Messages",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                  ))
            ],
          ),
          Row(
            children: [
              const Icon(
                Icons.notification_important,
                color: Color.fromARGB(255, 109, 102, 102),
              ),
              const SizedBox(
                width: 20,
              ),
              MaterialButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const NotificationPage()));
                  },
                  child: const Text(
                    "Notifications",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                  ))
            ],
          ),
          Row(children: [
            const Icon(
              Icons.account_balance,
              color: Color.fromARGB(255, 109, 102, 102),
            ),
            const SizedBox(
              width: 20,
            ),
            MaterialButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const BankingPage()));
                },
                child: const Text(
                  "Account Details",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                )),
          ]),
          Row(children: [
            const Icon(
              Icons.shopping_cart,
              color: Color.fromARGB(255, 109, 102, 102),
            ),
            const SizedBox(
              width: 20,
            ),
            MaterialButton(
                onPressed: () {},
                child: const Text(
                  "My Purchases",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                )),
          ]),
          Row(
            children: [
              const Icon(
                Icons.settings,
                color: Color.fromARGB(255, 109, 102, 102),
              ),
              const SizedBox(
                width: 20,
              ),
              MaterialButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ProductDetails()));
                  },
                  child: const Text(
                    "Settings",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                  ))
            ],
          ),
        ]));
  }
}
