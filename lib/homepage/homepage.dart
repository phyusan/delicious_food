import 'package:delicious_menu/category/categoryhome.dart';
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
        bottomNavigationBar: ClipRRect(
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(10), topRight: Radius.circular(10)),
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
                  icon: Container(
                      width: 40,
                      height: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: _selectedIndex == 0
                            ? Colors.white
                            : const Color(0xffA4D0A4),
                      ),
                      child: Icon(Icons.home,
                          size: _selectedIndex == 0 ? 30 : 25)),
                  // Icon(Icons.home, size: _selectedIndex == 0 ? 30 : 20),
                  label: "Home"),
              BottomNavigationBarItem(
                  icon: Container(
                      width: 40,
                      height: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: _selectedIndex == 1
                            ? Colors.white
                            : const Color(0xffA4D0A4),
                      ),
                      child: Icon(Icons.category,
                          size: _selectedIndex == 0 ? 30 : 25)),
                  // Icon(Icons.home, size: _selectedIndex == 0 ? 30 : 20),
                  label: "Category"),
              BottomNavigationBarItem(
                  icon: Container(
                      width: 40,
                      height: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: _selectedIndex == 2
                            ? Colors.white
                            : const Color(0xffA4D0A4),
                      ),
                      child: Icon(Icons.favorite_outline,
                          size: _selectedIndex == 0 ? 30 : 25)),
                  // Icon(Icons.home, size: _selectedIndex == 0 ? 30 : 20),
                  label: "Favourite"),
              BottomNavigationBarItem(
                  icon: Container(
                      width: 40,
                      height: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: _selectedIndex == 3
                            ? Colors.white
                            : const Color(0xffA4D0A4),
                      ),
                      child: Icon(Icons.person,
                          size: _selectedIndex == 0 ? 30 : 25)),
                  // Icon(Icons.home, size: _selectedIndex == 0 ? 30 : 20),
                  label: "Profile"),
            ],
          ),
        ),
        // appBar: AppBar(
        //   elevation: 0,
        //   backgroundColor: Colors.green.shade400,
        //   title: Center(
        //     child: _selectedIndex == 1
        //         ? const Text('Testing')
        //         : const Text('Welcome to Food House'),
        //   ),
        //   actions: [
        //     Padding(
        //       padding: const EdgeInsets.only(right: 20),
        //       child: InkWell(
        //         onTap: () {
        //           Navigator.push(
        //               context,
        //               MaterialPageRoute(
        //                   builder: (context) => const DetailOrder()));
        //         },
        //         child: const Icon(Icons.shopping_cart),
        //       ),
        //     )
        //   ],
        // ),
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
      return const CategoryPage();
    } else if (index == 2) {
      return Container(color: Colors.purple);
    } else if (index == 3) {
      return Container();
    } else {
      return Container();
    }
  }
}
