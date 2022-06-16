import 'package:flutter/material.dart';
import 'package:ui_app/mycontainer_reg.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60.0),
        child: AppBar(
          title: const Text(''),
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [
                  Color(0XFFA1282A),
                  Color.fromARGB(255, 164, 53, 52),
                  Color(0XFF711F2C),

                  // Color(0XFFEABA39),
                  // Color(0XFFE5A435),
                  // Color(0XFFD35E2D),
                ],
              ),
            ),
          ),
        ),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 50.0),
              child: CircleAvatar(
                  backgroundColor: Colors.black,
                  radius: 70,
                  backgroundImage: AssetImage(
                    'images/boy.jpg',
                  )),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Your Name',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(
                  Icons.pin_drop,
                  color: Colors.orange,
                  size: 24.0,
                ),
                Text('city',
                    style: TextStyle(
                      fontSize: 18,
                    ))
              ],
            ),
            SizedBox(height: 40),
            const MyContainer()
          ],
        ),
      ),
    );
  }
}
