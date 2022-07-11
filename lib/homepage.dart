import 'package:flutter/material.dart';
import 'package:ui_app/reusable_widgets/resuable.dart';
import 'package:ui_app/screens/login.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,

        decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
          Color(0XFFA1282A),
          Color.fromARGB(255, 164, 53, 52),
          Color(0XFF711F2C),

          // Color(0XFFEABA39),
          // Color(0XFFE5A435),
          // Color(0XFFD35E2D),
        ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
        // child: Padding(
        //   padding: EdgeInsets.fromLTRB(
        //       20, MediaQuery.of(context).size.height * 0.2, 20, 0),
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 100),
              child: Text(
                'ONLINE  FURNITURE \n           STORE',
                style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.w600,
                    color: Colors.white),
              ),
            ),
            logoWidget('images/sofa11.png'),
            const SizedBox(
              height: 100,
            ),
            uiButton(context, "GET STARTED", () {}),
            const SizedBox(height: 50),
            signInOption(context, '', () {})
          ],
        ),
      ),
    );
  }
}

Column signInOption(BuildContext context, String title, Function onTap) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      const Text("Don't have an account?",
          style: TextStyle(color: Colors.white, fontSize: 14)),
      const SizedBox(height: 20),
      GestureDetector(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const LoginPage()));
        },
        child: const Text(
          " Sign IN Here",
          style: TextStyle(
              decoration: TextDecoration.underline,
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 28),
        ),
      )
    ],
  );
}
