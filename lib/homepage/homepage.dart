import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.green.shade400,
            title: const Center(child: Text('Welcome to Food House'))),
        body: Stack(
          children: [
            Container(
              width: double.infinity,
              height: double.infinity,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.only(top: 10, left: 10),
                child: Column(
                  children: [
                    const Text('Featured',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w600)),
                    SingleChildScrollView(
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: Stack(
                              children: [
                                Container(
                                  width: 200,
                                  height: 150,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.amber,
                                  ),
                                  child: const Padding(
                                    padding:
                                        EdgeInsets.only(right: 20, bottom: 15),
                                    child: Align(
                                        alignment: Alignment.bottomRight,
                                        child: Icon(Icons.heart_broken_rounded,
                                            color: Colors.black)),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
