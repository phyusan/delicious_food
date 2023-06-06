import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MenuCartWidget extends StatefulWidget {
  const MenuCartWidget({
    super.key,
  });

  @override
  State<MenuCartWidget> createState() => _MenuCartWidgetState();
}

class _MenuCartWidgetState extends State<MenuCartWidget> {
  int qty = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(
          left: 10,
          right: 10,
          top: 20,
        ),
        child: Container(
            decoration: BoxDecoration(
                color: const Color(0xffFFF8D6),
                borderRadius: BorderRadius.circular(20)),
            width: double.infinity,
            height: 100,
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Container(
                      width: 80,
                      height: 80,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: const Image(
                            image: AssetImage('assets/images/korea food1.png'),
                            fit: BoxFit.cover),
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 100,
                    top: 10,
                    bottom: 10,
                    right: 10,
                  ),
                  child: SizedBox(
                      width: 150,
                      height: 100,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text('Korea Spicy Noodle'),
                            const SizedBox(height: 5),
                            Row(
                              children: [
                                const Text('Extra food'),
                                const SizedBox(width: 10),
                                Container(
                                    width: 30,
                                    height: 30,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(30),
                                    ),
                                    child: const Icon(Icons.add_circle_outline))
                              ],
                            ),
                            const SizedBox(height: 10),
                            const Row(
                              children: [
                                Text('Price -'),
                                Text('7000 Ks'),
                              ],
                            ),

                            //end of column
                          ],
                        ),
                      )),
                ),
                Padding(
                    padding:
                        const EdgeInsets.only(left: 260, top: 8, bottom: 10),
                    child: Expanded(
                      child: Column(
                        children: [
                          Container(
                              width: 40,
                              height: 40,
                              decoration: const BoxDecoration(
                                  color: Color(0xffA4D0A4),
                                  borderRadius: BorderRadius.vertical(
                                      top: Radius.circular(20))),
                              child: IconButton(
                                  onPressed: () {
                                    qty = qty + 1;
                                    print(qty);
                                    setState(() {});
                                  },
                                  icon: const Icon(Icons.add_circle_outline))),
                          const SizedBox(height: 1),
                          Container(
                              width: 40,
                              height: 40,
                              decoration: const BoxDecoration(
                                  color: Color(0xffA4D0A4),
                                  borderRadius: BorderRadius.vertical(
                                      bottom: Radius.circular(20))),
                              child: IconButton(
                                  onPressed: () {
                                    if (qty > 0) {
                                      qty = qty - 1;
                                    }
                                    print(qty);
                                    setState(() {});
                                  },
                                  icon: const Icon(
                                      CupertinoIcons.minus_circled))),
                        ],
                      ),
                    )),
                Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Padding(
                              padding: EdgeInsets.only(top: 10, right: 15),
                              child: Text('Qty',
                                  style: TextStyle(
                                    fontSize: 20,
                                  ))),
                          const SizedBox(height: 10),
                          Container(
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: const Color.fromARGB(255, 250, 209, 121),
                              ),
                              child: Center(
                                  child: Text('$qty',
                                      style: const TextStyle(
                                          color: Colors.black))))
                        ],
                      )),
                )
                //end of Stack
              ],
            )));
  }
}
