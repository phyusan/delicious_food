import 'package:delicious_menu/category/domain/category_data.dart';
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
        body: Padding(
            padding: const EdgeInsets.only(top: 50),
            child: GridView.count(
              crossAxisCount: 3,
              crossAxisSpacing: 4.0,
              mainAxisSpacing: 8.0,
              children: List.generate(categorydata.length, (index) {
                return MenuCardWidget(
                    productname: categorydata[index].categoryname!,
                    productphoto: categorydata[index].categoryphoto!,
                    price: categorydata[index].price!);
              }),
            )));
  }
}

class MenuCardWidget extends StatelessWidget {
  const MenuCardWidget({
    super.key,
    required this.productname,
    required this.productphoto,
    required this.price,
  });
  final String productname;
  final String productphoto;
  final int price;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
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
                    color: const Color.fromARGB(255, 204, 242, 186),
                  ),
                  width: double.infinity,
                ),
              ),
              Align(
                alignment: Alignment.topCenter,
                child: SizedBox(
                  width: 60,
                  height: 60,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(60),
                    child: Image(
                        image: AssetImage(productphoto), fit: BoxFit.cover),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Align(
                    alignment: Alignment.center, child: Text(productname)),
              ),
              Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Text('${price.toString()} Ks')))
            ],
          )),
    );
  }
}
