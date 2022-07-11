import 'package:flutter/material.dart';
import 'reusable_widgets/resuable.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
//  static const routeName = 'Notifications';
  final headerStyle = TextStyle(
    color: Colors.grey.shade800,
    fontWeight: FontWeight.bold,
    fontSize: 20.0,
  );
  var _value1 = false;
  var _value2 = true;
  var _value3 = true;
  var _value4 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(context, "NOTIFICATIONS", () {}),
      backgroundColor: Colors.grey.shade200,
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const SizedBox(height: 40.0),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              margin: const EdgeInsets.symmetric(
                vertical: 8.0,
                horizontal: 0,
              ),
              child: Column(
                children: <Widget>[
                  SwitchListTile(
                    activeColor: Colors.amber,
                    value: _value1,
                    title: Text("Product Updates ", style: headerStyle),
                    subtitle: const Text('jgddyfkhgfjfvhgfkyfvjhgv'),
                    onChanged: (value) {
                      setState(() {
                        _value1 = value;
                      });
                    },
                  ),
                  _buildDivider(),
                  SwitchListTile(
                    activeColor: Colors.amber,
                    value: _value2,
                    title: Text("Comments", style: headerStyle),
                    subtitle: const Text('jhbasiahskcn'),
                    onChanged: (value) {
                      setState(() {
                        _value2 = value;
                      });
                    },
                  ),
                  _buildDivider(),
                  SwitchListTile(
                    activeColor: Colors.amber,
                    value: _value3,
                    title: Text("Offer Updates", style: headerStyle),
                    subtitle: const Text('jgddyfkhgfjfvhgfkyfvjhgv'),
                    onChanged: (value) {
                      setState(() {
                        _value3 = value;
                      });
                    },
                  ),
                  _buildDivider(),
                  SwitchListTile(
                    activeColor: Colors.amber,
                    value: _value4,
                    title: Text("Notifications", style: headerStyle),
                    subtitle: const Text('jgddyfkhgfjfvhgfkyfvjhgv'),
                    onChanged: (value) {
                      setState(() {
                        _value4 = value;
                      });
                    },
                  ),
                ],
              ),
            ),
            const SizedBox(height: 60.0),
            Center(child: uiButton(context, "UPDATE SETTINGS ", () {})),
          ],
        ),
      ),
    );
  }

  Container _buildDivider() {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 8.0,
      ),
      width: double.infinity,
      height: 1.0,
      color: Colors.grey.shade300,
    );
  }
}
