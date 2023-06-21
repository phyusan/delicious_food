import 'package:delicious_menu/detailorderpayment/detail_order.dart';
import 'package:flutter/material.dart';

import 'home_screen.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  final GlobalKey _bottomNavigationKey = GlobalKey();
  late Animation<double> animation;
  late AnimationController controller;

  @override
  Widget build(BuildContext context) {
    int page = 0;
    return Scaffold(
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: BottomNavigationBar(
              selectedItemColor: const Color(0xff617A55),
              selectedIconTheme: const IconThemeData(color: Color(0xff617A55)),
              elevation: 100,
              type: BottomNavigationBarType.fixed,
              backgroundColor: const Color(0xffA4D0A4),
              currentIndex: _selectedIndex,
              onTap: _onItemTapped,
              items: [
                BottomNavigationBarItem(
                    icon: Icon(Icons.home, size: _selectedIndex == 0 ? 30 : 20),
                    label: "Home"),
                BottomNavigationBarItem(
                    icon:
                        Icon(Icons.person, size: _selectedIndex == 1 ? 30 : 20),
                    label: "Chief"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.chat, size: _selectedIndex == 2 ? 30 : 20),
                    label: "Menu"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.settings,
                        size: _selectedIndex == 3 ? 30 : 20),
                    label: "Settings"),
              ],
            ),
          ),
        ),
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.green.shade400,
          title: const Center(
            child: Text('Welcome to Food House'),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const DetailOrder()));
                },
                child: const Icon(Icons.shopping_cart),
              ),
            )
          ],
        ),
        body: bottomNavBarItems(_selectedIndex));
  }

  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      print(_selectedIndex);
    });
  }

  Widget bottomNavBarItems(int index) {
    if (index == 0) {
      return const HomeScreenWidget();
    } else if (index == 1) {
      return Container(color: Colors.blue);
    } else if (index == 2) {
      return Container(color: Colors.purple);
    } else if (index == 3) {
      return Container();
    } else {
      return Container();
    }
  }
}
