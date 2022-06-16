import 'package:flutter/material.dart';
import 'package:ui_app/login.dart';
import 'homepage.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ui development',
      home: HomePage(),
      // routes: {
      //   'home': (context) => const HomePage(),
      //   'register': (context) => const RegisterPage(),
      //   'login': (context) => const LoginPage(),
      // 'Otp': (context) => const OtpPage(
      //       numValue: '',
      //     ),
      // 'location': (context) => const AddressPage(),
      // },
    ),
  );
}
