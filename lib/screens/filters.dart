import 'package:flutter/material.dart';

import 'package:ui_app/reusable_widgets/resuable.dart';

class FilterPage extends StatefulWidget {
  const FilterPage({Key? key}) : super(key: key);

  @override
  State<FilterPage> createState() => _FilterPageState();
}

class _FilterPageState extends State<FilterPage> {
  int _current = 0;
  List<String> images = [
    "images/sofa11.png",
    "images/chair.png",
    "images/sofa11.png",
    "images/chair.png",
    "images/sofa11.png",
    "images/chair.png",
    "images/sofa11.png"
  ];

  List<Widget> generateImageTiles() {
    return images
        .map((element) => ClipRRect(
              borderRadius: BorderRadius.circular(15.0),
              child: Image.asset(
                element,
                fit: BoxFit.contain,
              ),
            ))
        .toList();
  }

  // double _currentSliderValue = 20;
  RangeValues _currentRangeValues = const RangeValues(20, 60);
  // SfRangeValues _values = SfRangeValues(4.0, 8.0);
  late Color? activeColor;
  late Color? thumbColor;
  late Color? inactiveColor;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(context, "FILTERS", () {}),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  textHeadings('Category', Colors.black),
                  textHeadings('More  >', Colors.grey)
                ],
              ),
            ),
            SizedBox(
                height: 120,
                child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: generateImageTiles(),
                    ))),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Row(
                children: [textHeadings('Pricing', Colors.black)],
              ),
            ),
            SliderTheme(
              data: SliderTheme.of(context).copyWith(
                activeTrackColor: Colors.white,
                inactiveTrackColor: Colors.grey,
                trackHeight: 4.0,
                thumbColor: Colors.redAccent,
              ),
              child: RangeSlider(
                values: _currentRangeValues,
                max: 1000,
                min: 1,
                activeColor: Colors.amber, // thumbColor: Colors.amber,
                inactiveColor: Colors.grey.shade200,
                labels: RangeLabels(
                  _currentRangeValues.start.round().toString(),
                  _currentRangeValues.end.round().toString(),
                ),
                // _currentSliderValue.round().toString(),
                onChanged: (RangeValues values) {
                  setState(() {
                    _currentRangeValues = values;
                  });
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Row(
                children: [textHeadings('Colors', Colors.black)],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                colorpallete(Colors.white10),
                colorpallete(Colors.black),
                colorpallete(Colors.grey),
                colorpallete(Colors.purple),
                colorpallete(Colors.amber),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                colorpallete(Colors.orange),
                colorpallete(Colors.deepPurple),
                colorpallete(Colors.blue),
                colorpallete(Colors.cyan),
                colorpallete(Colors.green),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Text textHeadings(String title, Color color) {
    return Text(
      title,
      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: color),
    );
  }

  CircleAvatar colorpallete(Color color) {
    return CircleAvatar(
      radius: 20,
      backgroundColor: color,
    );
  }

  Widget box(String title, Color backgroundcolor) {
    return Container(
        margin: const EdgeInsets.all(10),
        width: 180,
        color: backgroundcolor,
        alignment: Alignment.center,
        child: Text(title,
            style: const TextStyle(color: Colors.white, fontSize: 20)));
  }
}
