import 'package:flutter/material.dart';

import '../../commonwidget/quantitybutton_widget.dart';
import '../domain/order_food.dart';

class Ordercartshow extends StatefulWidget {
  const Ordercartshow({
    super.key,
    required this.order,
  });
  final OrderData order;

  @override
  State<Ordercartshow> createState() => _OrdercartshowState();
}

class _OrdercartshowState extends State<Ordercartshow> {
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
                child: SizedBox(
                    width: 80,
                    height: 100,
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image(
                            image: AssetImage(widget.order.productphoto!),
                            fit: BoxFit.cover))),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 100, top: 10, bottom: 10),
                child: SizedBox(
                    width: 150,
                    height: 100,
                    child: Stack(
                      children: [
                        Padding(
                            padding: const EdgeInsets.only(top: 10, right: 5),
                            child: Text(
                              widget.order.productname!,
                              style: const TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w500),
                            )),
                        Padding(
                            padding: const EdgeInsets.only(
                                bottom: 10, top: 60, right: 5),
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.green.shade300,
                                  borderRadius: BorderRadius.circular(50)),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text('${widget.order.price} Ks',
                                    style: const TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500)),
                              ),
                            ))
                      ],
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 250, top: 10, bottom: 10, right: 10),
                child: SizedBox(
                    width: 100,
                    height: 100,
                    child: Padding(
                        padding: const EdgeInsets.only(
                          top: 25,
                        ),
                        child: Row(
                          children: [
                            QuantityButton(
                              icon1: Icons.add,
                              action: () {
                                print('click');
                                widget.order.qty = widget.order.qty + 1;
                                setState(() {});
                                print(widget.order.qty);
                              },
                            ),
                            const SizedBox(width: 5),
                            SizedBox(
                                width: 30,
                                height: 30,
                                child:
                                    Center(child: Text('${widget.order.qty}'))),
                            const SizedBox(width: 5),
                            QuantityButton(
                              icon1: Icons.remove,
                              action: () {
                                if (widget.order.qty > 0) {
                                  widget.order.qty = widget.order.qty - 1;
                                }

                                setState(() {});
                                print(widget.order.qty * 7);
                                print(widget.order.qty);
                              },
                            )
                          ],
                        ))),
              ),
            ])));
  }
}
