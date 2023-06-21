import 'package:delicious_menu/detailorderpayment/domain/order_food.dart';
import 'package:delicious_menu/homepage/homepage.dart';
import 'package:flutter/material.dart';

import 'widgets/order_item_cart.dart';

class DetailOrder extends StatefulWidget {
  const DetailOrder({super.key});

  @override
  State<DetailOrder> createState() => _DetailOrderState();
}

class _DetailOrderState extends State<DetailOrder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 253, 248, 248),
        appBar: AppBar(
          backgroundColor: Colors.green.shade400,
          elevation: 0,
          leading: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: const Icon(Icons.arrow_back)),
          title: const Text('Your cart Food'),
        ),
        body: SafeArea(
            child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              child: SizedBox(
                height: 300,
                child: ListView.builder(
                  itemCount: orderdata.length,
                  itemBuilder: (context, index) {
                    return Ordercartshow(
                      order: orderdata[index],
                    );
                  },
                ),
              ),
            ),
            Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Container(
                    width: 100,
                    height: 40,
                    decoration: BoxDecoration(
                        color: Colors.green.shade200,
                        borderRadius: BorderRadius.circular(20)),
                    child: Center(
                      child: InkWell(
                        onTap: () {},
                        child: const Text('Apply',
                            style: TextStyle(
                                letterSpacing: 1,
                                fontSize: 18,
                                fontWeight: FontWeight.w500)),
                      ),
                    ))),
            Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                child: SizedBox(
                    height: 250,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 20, horizontal: 20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Item Price',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500)),
                              Text('24000 Ks',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500)),
                            ],
                          ),
                          const SizedBox(height: 20),
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Service Charges',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500)),
                              Text('24000 Ks',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500)),
                            ],
                          ),
                          const SizedBox(height: 40),
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Total Bill',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500)),
                              Text('48000 Ks',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500)),
                            ],
                          ),
                          const SizedBox(height: 20),
                          Center(
                            child: InkWell(
                              onTap: () {
                                showDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return AlertDialog(
                                        icon: Icon(Icons.check_circle_outlined,
                                            color: Colors.green.shade200,
                                            size: 50),
                                        title: const Text("Order Successful"),
                                        content: const Text(
                                            "Your Payment is paid 234000 Ks"),
                                        actions: [
                                          InkWell(
                                              onTap: () {
                                                Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                        builder: (context) =>
                                                            const MyHomePage()));
                                              },
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        vertical: 3,
                                                        horizontal: 3),
                                                child: Container(
                                                  width: double.infinity,
                                                  height: 50,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                    color:
                                                        Colors.green.shade200,
                                                  ),
                                                  child: const Center(
                                                      child: Text("OK",
                                                          style: TextStyle(
                                                              fontSize: 18,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500))),
                                                ),
                                              ))
                                        ],
                                      );
                                    });
                              },
                              child: Container(
                                  width: 200,
                                  height: 50,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: Colors.green.shade200),
                                  child: const Center(
                                      child: Text('Payment',
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.w500)))),
                            ),
                          )
                        ],
                      ),
                    )))
          ],
        )));
  }
}
