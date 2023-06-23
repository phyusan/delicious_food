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
        body: GridView.count(
          crossAxisCount: 3,
          children: const [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: MenuCardWidget(),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: MenuCardWidget(),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: MenuCardWidget(),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: MenuCardWidget(),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: MenuCardWidget(),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: MenuCardWidget(),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: MenuCardWidget(),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: MenuCardWidget(),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: MenuCardWidget(),
            )
          ],
        ));
  }
}

class MenuCardWidget extends StatelessWidget {
  const MenuCardWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 120,
        height: 130,
        color: Colors.white,
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color(0xff98D8AA),
                ),
                width: double.infinity,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: SizedBox(
                width: 60,
                height: 60,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(60),
                  child: const Image(
                      image: AssetImage('assets/images/europe food1.png'),
                      fit: BoxFit.cover),
                ),
              ),
            ),
            const Padding(
                padding: EdgeInsets.only(top: 70, left: 10),
                child: Text('Noodle Salad')),
            const Padding(
                padding: EdgeInsets.only(
                  left: 20,
                  top: 90,
                ),
                child: Text('6000 Ks'))
          ],
        ));
  }
}
