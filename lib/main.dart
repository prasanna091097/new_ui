import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ui_app/cart_screens_new/widgets/catalog.dart';
import 'package:ui_app/homepage.dart';

void main() {
  runApp(
    const GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'ui development',
        home: CatalogProducts()
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
