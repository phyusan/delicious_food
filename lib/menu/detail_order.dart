import 'package:flutter/material.dart';

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
            child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          child: ListView.builder(
            itemCount: 4,
            itemBuilder: (context, index) {
              return SizedBox(
                  width: double.infinity,
                  child: Card(
                      elevation: 3,
                      child: Stack(children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 10, horizontal: 10),
                          child: Container(
                            width: 80,
                            height: 100,
                            color: Colors.amber,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 100, top: 10, bottom: 10),
                          child: SizedBox(
                              width: 150,
                              height: 100,
                              child: Stack(
                                children: [
                                  const Padding(
                                      padding:
                                          EdgeInsets.only(top: 10, right: 5),
                                      child: Text(
                                        'Original Sushi',
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w500),
                                      )),
                                  Padding(
                                      padding: const EdgeInsets.only(
                                          bottom: 10, top: 60, right: 5),
                                      child: Container(
                                        decoration: BoxDecoration(
                                            color: Colors.green.shade300,
                                            borderRadius:
                                                BorderRadius.circular(50)),
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
                                      Container(
                                          width: 30,
                                          height: 30,
                                          color: Colors.green,
                                          child: const Center(
                                            child: Icon(Icons.add),
                                          )),
                                      const SizedBox(width: 5),
                                      Container(
                                          width: 30,
                                          height: 30,
                                          color: Colors.amber,
                                          child:
                                              const Center(child: Text('2'))),
                                      const SizedBox(width: 5),
                                      Container(
                                          width: 30,
                                          height: 30,
                                          color: Colors.green,
                                          child: const Center(
                                            child: Icon(Icons.add),
                                          )),
                                    ],
                                  ))),
                        ),
                      ])));
            },
          ),
        )));
  }
}
