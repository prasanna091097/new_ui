import 'package:flutter/material.dart';
import 'package:ui_app/widgets/mycontainer_reg.dart';
import 'package:ui_app/reusable_widgets/resuable.dart';

class More extends StatefulWidget {
  const More({Key? key}) : super(key: key);

  @override
  State<More> createState() => _MoreState();
}

class _MoreState extends State<More> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(context, "", () {}),
      body: SizedBox(
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
            const SizedBox(height: 40),
            const MyContainer()
          ],
        ),
      ),
    );
  }
}
