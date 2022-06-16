import 'package:flutter/material.dart';
import 'package:ui_app/screens/home.dart';
import 'package:ui_app/screens/manage_accounts.dart';
import 'package:ui_app/screens/more.dart';
import 'package:ui_app/screens/register.dart';
import 'package:ui_app/screens/settings.dart';
import 'package:ui_app/screens/shopping_cart.dart';

class Bottom_nav extends StatefulWidget {
  @override
  _Bottom_navState createState() => _Bottom_navState();
}

class _Bottom_navState extends State<Bottom_nav> {
  int _currentIndex = 0;
  final screens = [
    Home(),
    ShoppingCart(),
    ManageAccounts(),
    Settings(),
    RegisterPage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children: screens,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        selectedFontSize: 20,
        selectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.grey,
              size: 40,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.shopping_bag,
              size: 40,
              color: Colors.grey,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.manage_accounts,
              size: 40,
              color: Colors.grey,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.settings,
              size: 40,
              color: Colors.grey,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.more_horiz_outlined,
              size: 20,
              color: Colors.grey,
            ),
            label: '',
          )
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
