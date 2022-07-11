import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/instance_manager.dart';
import 'package:getwidget/getwidget.dart';
import 'package:ui_app/screens/creditcard_screen.dart';
import '../reusable_widgets/resuable.dart';

class BankingPage extends StatelessWidget {
  const BankingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: CustomAppBar(context, "TOP  UP FURPAY", () {}),
      body: SafeArea(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              const GFCard(
                elevation: 4,
                boxFit: BoxFit.cover,
                title: GFListTile(
                  title: Text(
                    'Balance',
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  subTitle: Text(
                    '\$205,27',
                    style: TextStyle(
                      color: Colors.deepPurple,
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Row(
                children: const [
                  Padding(
                    padding: EdgeInsets.all(18.0),
                    child: Text(
                      "PAYMENT METHOD",
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
              const GFAccordion(
                  titlePadding: EdgeInsets.all(18),
                  titleBorderRadius: BorderRadius.all(Radius.circular(40)),
                  title: 'Mobile Banking',
                  content:
                      'FlutterX UI is an Amazing app that offers you multiple interfaces using filters with its source code',
                  collapsedIcon: Icon(Icons.arrow_forward_ios_rounded),
                  expandedIcon: Icon(Icons.arrow_back_ios_new_rounded)),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Container(
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(80))),
                  child: GFListTile(
                      onTap: () => Get.to(() => const CreditCardWidget()),
                      color: Colors.white,
                      titleText: 'Internet Banking',
                      icon: const Icon(Icons.arrow_forward_ios_rounded)),
                ),
              ),
              const GFAccordion(
                  titlePadding: EdgeInsets.all(18),
                  titleBorderRadius: BorderRadius.all(Radius.circular(40)),
                  title: 'SMS Banking',
                  content:
                      'FlutterX UI is an Amazing app that offers you multiple interfaces using filters with its source code',
                  collapsedIcon: Icon(Icons.arrow_forward_ios_rounded),
                  expandedIcon: Icon(Icons.arrow_back_ios_new_rounded)),
              const GFAccordion(
                  titlePadding: EdgeInsets.all(18),
                  titleBorderRadius: BorderRadius.all(Radius.circular(40)),
                  title: 'Pawnshop',
                  content:
                      'FlutterX UI is an Amazing app that offers you multiple interfaces using filters with its source code',
                  collapsedIcon: Icon(Icons.arrow_forward_ios_rounded),
                  expandedIcon: Icon(Icons.arrow_back_ios_new_rounded)),
            ],
          ),
        ),
      ),
    );
  }
}
