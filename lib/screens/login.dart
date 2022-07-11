import 'package:flutter/material.dart';
import 'package:ui_app/bottom_nav.dart';
import 'package:ui_app/reusable_widgets/resuable.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _passwordTextController = TextEditingController();

  final TextEditingController _userNameTextController = TextEditingController();
  late PageController _pageController;
  int activePageIndex = 0;

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(context, "", () {}),
      body: SingleChildScrollView(
        physics: const ClampingScrollPhysics(),
        // ignore: avoid_unnecessary_containers
        child: Container(
            child: Column(children: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: _menuBar(context),
                ),
                Expanded(
                  flex: 2,
                  child: PageView(
                    controller: _pageController,
                    physics: const ClampingScrollPhysics(),
                    onPageChanged: (int i) {
                      FocusScope.of(context).requestFocus(FocusNode());
                      setState(() {
                        activePageIndex = i;
                      });
                    },
                    children: <Widget>[
                      ConstrainedBox(
                        constraints: const BoxConstraints.expand(),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            ListTile(
                                title: TextFormField(
                                    controller: _userNameTextController,
                                    decoration: const InputDecoration(
                                      hintText: "+0000000000000000",
                                    ))),
                            ListTile(
                                title: TextFormField(
                                    controller: _passwordTextController,
                                    decoration: const InputDecoration(
                                      hintText: "PASSWORD",
                                    ))),
                            uiButton(context, "Sign Up", () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const BottomNav()));
                            }),
                          ],
                        ),
                      ),
                      ConstrainedBox(
                        constraints: const BoxConstraints.expand(),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            ListTile(
                                title: TextFormField(
                                    validator: (value) {
                                      if (value!.isEmpty) {
                                        return "Field is empty";
                                      }
                                    },
                                    controller: _userNameTextController,
                                    decoration: const InputDecoration(
                                      hintText: "+0000 000000000000",
                                    ))),
                            ListTile(
                                title: TextFormField(
                                    validator: (value) {
                                      if (value!.isEmpty) {
                                        return "Password cannot be empty";
                                      } else if (value.length < 4) {
                                        return "Password length should atleast 4";
                                      }
                                    },
                                    controller: _passwordTextController,
                                    decoration: const InputDecoration(
                                        hintText: "..",
                                        labelText: "PASSWORD"))),
                            uiButton(context, "Sign Up", () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const BottomNav()));
                            }),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 180),
                              child: TextButton(
                                  child: Text(
                                    "Forgot  your password?",
                                    style: TextStyle(
                                        color: Colors.purple.shade900,
                                        fontSize: 20),
                                    textAlign: TextAlign.right,
                                  ),
                                  onPressed: () {}),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ])),
      ),
    );
  }

  Widget _menuBar(BuildContext context) {
    return Container(
      width: 300.0,
      height: 60.0,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey, width: 1),
        borderRadius: const BorderRadius.only(
          topRight: Radius.circular(40),
          bottomRight: Radius.circular(40),
          topLeft: Radius.circular(40),
          bottomLeft: Radius.circular(40),
        ),
        color: const Color(0XFFE0E0E0),
        // borderRadius: BorderRadius.all(Radius.circular(borderRadius)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Expanded(
            child: InkWell(
              // borderRadius: BorderRadius.all(Radius.circular(borderRadius)),
              onTap: _onPlaceBidButtonPress,
              child: Container(
                width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.symmetric(vertical: 15),
                alignment: Alignment.center,
                decoration: (activePageIndex == 0)
                    ? BoxDecoration(
                        border: Border.all(color: Colors.grey, width: 1),

                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(40),
                          bottomLeft: Radius.circular(40),
                        ),
                        color: Colors.grey,
                        //borderRadius: BorderRadius.all(Radius.circular(borderRadius)),
                      )
                    : null,
                child: Text(
                  "LOG IN",
                  style: (activePageIndex == 0)
                      ? const TextStyle(
                          color: Colors.purple, fontWeight: FontWeight.bold)
                      : const TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
          Expanded(
            child: InkWell(
              //borderRadius: BorderRadius.all(Radius.circular(borderRadius)),
              onTap: _onBuyNowButtonPress,
              child: Container(
                width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.symmetric(vertical: 15),
                alignment: Alignment.center,
                decoration: (activePageIndex == 1)
                    ? BoxDecoration(
                        border: Border.all(color: Colors.grey, width: 1),
                        borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(40),
                          bottomRight: Radius.circular(40),
                        ),

                        // borderRadius: BorderRadius.all(Radius.circular(40)),
                        color: Colors.grey,
                        // borderRadius: BorderRadius.all(Radius.circular(borderRadius)),
                      )
                    : null,
                child: Text(
                  "SIGN UP",
                  style: (activePageIndex == 1)
                      ? const TextStyle(
                          color: Colors.purple, fontWeight: FontWeight.bold)
                      : const TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _onPlaceBidButtonPress() {
    _pageController.animateToPage(0,
        duration: const Duration(milliseconds: 500), curve: Curves.decelerate);
  }

  void _onBuyNowButtonPress() {
    _pageController.animateToPage(1,
        duration: const Duration(milliseconds: 500), curve: Curves.decelerate);
  }
}
