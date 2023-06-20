import 'package:flutter/material.dart';

import '../../commonwidget/quantitybutton_widget.dart';

class Ordercartshow extends StatelessWidget {
  const Ordercartshow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: double.infinity,
        child: Card(
            elevation: 3,
            child: Stack(children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                child: Container(
                  width: 80,
                  height: 100,
                  color: Colors.amber,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 100, top: 10, bottom: 10),
                child: SizedBox(
                    width: 150,
                    height: 100,
                    child: Stack(
                      children: [
                        const Padding(
                            padding: EdgeInsets.only(top: 10, right: 5),
                            child: Text(
                              'Original Sushi',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w500),
                            )),
                        Padding(
                            padding: const EdgeInsets.only(
                                bottom: 10, top: 60, right: 5),
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.green.shade300,
                                  borderRadius: BorderRadius.circular(50)),
                              child: const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text('34,000 Ks',
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500)),
                              ),
                            ))
                      ],
                    )),
              ),
              const Padding(
                padding:
                    EdgeInsets.only(left: 250, top: 10, bottom: 10, right: 10),
                child: SizedBox(
                    width: 100,
                    height: 100,
                    child: Padding(
                        padding: EdgeInsets.only(
                          top: 25,
                        ),
                        child: Row(
                          children: [
                            QuantityButton(
                              icon1: Icons.add,
                            ),
                            SizedBox(width: 5),
                            SizedBox(
                                width: 30,
                                height: 30,
                                child: Center(child: Text('2'))),
                            SizedBox(width: 5),
                            QuantityButton(icon1: Icons.remove)
                          ],
                        ))),
              ),
            ])));
  }
}
