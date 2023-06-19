import 'package:delicious_menu/menu/domain/menucart_data.dart';
import 'package:delicious_menu/menu/widgets/menu_cart.dart';
import 'package:flutter/material.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({super.key});

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 184, 219, 180),
      bottomNavigationBar: Padding(
          padding: const EdgeInsets.only(bottom: 10, left: 20, right: 20),
          child: InkWell(
            onTap: () {
              Navigator.pop(context);
              // Navigator.push(context,
              //     MaterialPageRoute(builder: (context) => const DetailOrder()));
            },
            child: Container(
                height: 50,
                color: Colors.green.shade400,
                child: const Center(
                    child: Text('Order Cart',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w500)))),
          )),
      appBar: AppBar(
        backgroundColor: Colors.green.shade400,
        elevation: 0,
        leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(Icons.arrow_back)),
        title: const Text('Menu Book'),
      ),
      body: ListView.builder(
        itemCount: menu.length,
        itemBuilder: (context, index) {
          return MenuCartWidget(cart: menu[index], quantity: false);
        },
      ),
    );
  }
}
