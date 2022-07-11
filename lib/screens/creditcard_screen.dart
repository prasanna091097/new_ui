// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';

import 'package:ui_app/reusable_widgets/resuable.dart';

String cardNumber = "";
String cardHolderName = "";

String dateValue = 'DATE';
String yearValue = 'YEAR';

class CreditCardWidget extends StatefulWidget {
  const CreditCardWidget({
    Key? key,
  }) : super(key: key);

  @override
  _CreditCardWidget createState() => _CreditCardWidget();
}

class _CreditCardWidget extends State<CreditCardWidget> {
  final _textControllerNumber = TextEditingController();
  final _textControllercardHolderName = TextEditingController();
  void showDetails() {
    cardNumber = _textControllerNumber.text;
    cardHolderName = _textControllercardHolderName.text;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(context, "ADD CREDIT CARD", () {}),
      body: SafeArea(
          child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Card(
                margin: const EdgeInsets.symmetric(
                    horizontal: 15.0, vertical: 15.0),
                elevation: 5.0,
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15.0))),
                child: cardDesign(context)),
            const Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                "ADD NEW CARD ",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
            ListTile(
                title: TextFormField(
                    controller: _textControllercardHolderName,
                    decoration: InputDecoration(
                      hintText: "Cardholder name",
                      fillColor: Colors.grey.shade100,
                      filled: true,
                    ))),
            const SizedBox(
              height: 40,
            ),
            ListTile(
                title: TextFormField(
                    controller: _textControllerNumber,
                    decoration: InputDecoration(
                      hintText: "Card Number",
                      fillColor: Colors.grey.shade100,
                      filled: true,
                    ))),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                DropdownButton<String>(
                  value: dateValue,
                  items: <String>[
                    'DATE',
                    '1',
                    '2',
                    '3',
                    '4',
                    '5',
                    '6',
                    '7',
                    '8',
                    '9',
                    '10',
                    '11',
                    '12',
                    '13',
                    '14',
                    '15',
                    '16',
                    '17',
                    '18',
                    '19',
                    '20',
                    '21',
                    '22',
                    '23',
                    '24',
                    '25',
                    '26',
                    '27',
                    '28',
                    '29',
                    '30',
                    '31'
                  ].map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(
                        value,
                        style: const TextStyle(fontSize: 20),
                      ),
                    );
                  }).toList(),
                  onChanged: (String? newValue) {
                    setState(() {
                      dateValue = newValue!;
                    });
                  },
                ),
                DropdownButton<String>(
                  value: yearValue,
                  items: <String>[
                    'YEAR',
                    '2022',
                    '2023',
                    '2024',
                    '2025',
                  ].map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(
                        value,
                        style: const TextStyle(fontSize: 20),
                      ),
                    );
                  }).toList(),
                  onChanged: (String? newValue) {
                    setState(() {
                      yearValue = newValue!;
                    });
                  },
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                uiButton(context, "ADD NEW", () {
                  setState(() {
                    showDetails();
                  });
                }),
              ],
            ),
                   ],
        ),
      )),
    );
  }
}

Widget cardDesign(BuildContext context) {
  return Card(
    shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(15.0))),
    child: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [
                  Color(0XFFA1282A),
                  Color.fromARGB(255, 164, 53, 52),
                  Color(0XFF711F2C),
                ]),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15),
              topRight: Radius.circular(15),
              bottomLeft: Radius.circular(15),
              bottomRight: Radius.circular(15),
            )),
        height: 250,
        width: 500,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Container(
                    padding: const EdgeInsets.all(10),
                    height: 100,
                    width: 120,
                    child: cardImage()),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40),
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Text(
                  cardNumber,
                  textAlign: TextAlign.left,
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 40),
              child: Text(
                "card Number",
                style: TextStyle(fontSize: 20.0, color: Colors.black),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  child: Text(
                    cardHolderName,
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  child: Text(
                    // ignore: prefer_interpolation_to_compose_strings
                    dateValue + "/" + yearValue,
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 40),
                  child: Text(
                    "card Holder",
                    style: TextStyle(
                        // fontFamily: "SemiBoldFont",
                        fontSize: 20.0,
                        color: Colors.black),
                  ),
                ),
                Container(
                  child: const Padding(
                    padding: EdgeInsets.only(left: 40),
                    child: Text(
                      " Valid",
                      style: TextStyle(fontSize: 20.0, color: Colors.black),
                    ),
                  ),
                ),
              ],
            ),
          ],
        )),
  );
}

Widget cardImage() {
  return Image.asset(
    "images/discover.png",
    fit: BoxFit.scaleDown,
  );
}
