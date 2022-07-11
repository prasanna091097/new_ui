import 'package:flutter/material.dart';

class CartUI extends StatefulWidget {
  final String image, name, oprice, price;
  const CartUI({
    required Key key,
    required this.image,
    required this.name,
    required this.oprice,
    required this.price,
  }) : super(key: key);

  @override
  State<CartUI> createState() => _CartUIState();
}

class _CartUIState extends State<CartUI> {
  @override
  int _itemCount = 0;
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(widget.image),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 40,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  // ignore: avoid_unnecessary_containers
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // ignore: avoid_unnecessary_containers
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Text(
                              widget.name,
                              style: const TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 18,
                              ),
                            ),
                          ),
                        ),
                        FittedBox(
                          child: Row(
                            children: [
                              IconButton(
                                icon: const Icon(Icons.remove),
                                onPressed: () => setState(() => _itemCount != 0
                                    ? _itemCount--
                                    : _itemCount),
                              ),
                              Container(
                                height: 20,
                                width: 20,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                  color: Colors.black,
                                )),
                                child:
                                    Center(child: Text(_itemCount.toString())),
                              ),
                              IconButton(
                                icon: const Icon(Icons.add),
                                onPressed: () => setState(() => _itemCount++),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Padding(
                    padding: const EdgeInsets.all(9.0),
                    // ignore: avoid_unnecessary_containers
                    child: Container(
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                          Padding(
                              padding: const EdgeInsets.only(right: 10),
                              child: Column(children: [
                                Text.rich(TextSpan(children: <TextSpan>[
                                  TextSpan(
                                      text: widget.oprice,
                                      style: const TextStyle(
                                          fontSize: 20,
                                          color: Colors.grey,
                                          decoration:
                                              TextDecoration.lineThrough))
                                ])),
                                const SizedBox(
                                  height: 10,
                                ),
                                Text.rich(
                                  TextSpan(
                                      text: widget.price,
                                      style: const TextStyle(fontSize: 20)),
                                ),
                              ]))
                        ]))),
                const SizedBox(
                  height: 5,
                )
              ],
            )
          ]),
    );
  }
}
