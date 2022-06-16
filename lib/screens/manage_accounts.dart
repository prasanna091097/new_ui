import 'package:flutter/material.dart';

class ManageAccounts extends StatelessWidget {
  const ManageAccounts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          'MANAGE ACCOUNTS',
          style: TextStyle(
            fontSize: 25,
          ),
        ),
      ),
    );
  }
}
