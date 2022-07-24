// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:ui_app/bottom_nav.dart';
import 'package:ui_app/reusable_widgets/resuable.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> with TickerProviderStateMixin {
  final formkey = GlobalKey<FormState>();
  MovetoNext(BuildContext context) async {
    if (formkey.currentState!.validate()) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const BottomNav()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    TabController tabController = TabController(length: 2, vsync: this);
    TabController(length: 2, vsync: this);
    return DefaultTabController(
      initialIndex: 1,
      length: 2,
      child: Scaffold(
        appBar: CustomAppBar(context, '', () {}),
        body: Padding(
          padding: const EdgeInsets.all(40.0),
          child: Column(
            children: [
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 40.0),
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    elevation: 3,
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey, width: 1),
                        borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(40),
                          bottomRight: Radius.circular(40),
                          topLeft: Radius.circular(40),
                          bottomLeft: Radius.circular(40),
                        ),
                        color: const Color(0XFFE0E0E0),
                      ),
                      // decoration: BoxDecoration(
                      //     color: Colors.white,
                      //     border: Border.all(color: Colors.grey, width: 1),
                      //     borderRadius: BorderRadius.circular(20)),
                      child: Material(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        child: TabBar(
                          indicator: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: const Color.fromARGB(255, 187, 184, 184),
                          ),
                          controller: tabController,
                          isScrollable: true,
                          labelPadding:
                              const EdgeInsets.symmetric(horizontal: 35),
                          tabs: const [
                            Tab(
                              child: Text(
                                "Sign Up ",
                                style: TextStyle(
                                    color: Colors.purple,
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                            Tab(
                              child: Text("Log In",
                                  style: TextStyle(
                                      color: Colors.purple,
                                      fontWeight: FontWeight.w600)),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 60),
              Expanded(
                child: TabBarView(controller: tabController, children: [
                  Column(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      customTextfield("Name", "Name", Icons.person),
                      const SizedBox(height: 20),
                      customTextfield("Email", "email", Icons.email),
                      const SizedBox(height: 20),
                      customTextfield("Password", "Password", Icons.password),
                      const SizedBox(height: 20),
                      uiButton(context, "Sign In", () {}),
                    ],
                  ),
                  Form(
                    key: formkey,
                    child: Column(
                      children: [
                        TextFormField(
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Field Can't be Empty";
                            }
                          },
                          decoration: const InputDecoration(
                              hintText: " +0 (000) 000-00-000"),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        TextFormField(
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Password cant be empty";
                            } else if (value.length < 6) {
                              return "Password Length should be atleast 6";
                            }

                            return null;
                          },
                          decoration: const InputDecoration(
                              labelText: "password", hintText: "............"),
                        ),
                        const SizedBox(
                          height: 60,
                        ),
                        const SizedBox(height: 30),
                        uiButton(context, "Log In", () {
                          MovetoNext(context);
                        }),
                        const Text(
                          "Forgot Your Password ?",
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 15,
                              color: Colors.purple),
                          textAlign: TextAlign.center,
                        )
                      ],
                    ),
                  ),
                ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

customTextfield(String Name, String hint, IconData Ichon) {
  return TextFormField(
    obscureText: true,
    decoration: InputDecoration(
      focusedBorder:
          const OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
      prefixIcon: Icon(Ichon),
      labelText: Name,
      hintText: hint,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
      ),
    ),
    keyboardType: TextInputType.visiblePassword,
  );
}
