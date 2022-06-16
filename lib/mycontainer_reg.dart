import 'package:flutter/material.dart';

class MyContainer extends StatelessWidget {
  const MyContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
                  onPressed: () {},
                  child: const Text(
                    "Messages",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                  ))
            ],
          ),
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
                  onPressed: () {},
                  child: const Text(
                    "Notifications",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                  ))
            ],
          ),
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
                Icons.shopping_cart,
                color: Color.fromARGB(255, 109, 102, 102),
              ),
              const SizedBox(
                width: 20,
              ),
              MaterialButton(
                  onPressed: () {},
                  child: const Text(
                    "Settings",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                  ))
            ],
          ),
        ]));
  }
}
