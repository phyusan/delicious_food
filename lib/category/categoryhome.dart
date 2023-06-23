import 'package:flutter/material.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.green.shade400,
          title: const Center(
            child: Text('Welcome to Food House'),
          ),
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                  width: 100,
                  height: 100,
                  color: Colors.amber,
                  child: Stack(
                    children: [
                      const Text('Food'),
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Container(
                            width: 80, height: 30, color: Colors.blue),
                      )
                    ],
                  )),
            )
          ],
        ));
  }
}
