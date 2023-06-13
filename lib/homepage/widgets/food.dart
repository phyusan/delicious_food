import 'package:delicious_menu/detailpage/fooddetail.dart';
import 'package:delicious_menu/homepage/domain/food_data.dart';
import 'package:flutter/material.dart';

class FoodWidget extends StatefulWidget {
  const FoodWidget({
    super.key,
    required this.food,
  });
  final FoodData food;

  @override
  State<FoodWidget> createState() => _FoodWidgetState();
}

class _FoodWidgetState extends State<FoodWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20),
      child: InkWell(
        onTap: () {
          print(widget.food);
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => DetailFoodWidget(
                        detailfood: widget.food,
                      )));
        },
        child: Container(
          width: 150,
          height: 150,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: const Color.fromARGB(255, 204, 242, 186)),
          child: Stack(
            children: [
              Padding(
                  padding: const EdgeInsets.only(
                    top: 10,
                    right: 15,
                    left: 15,
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image(
                        image: AssetImage(widget.food.productphoto!),
                        fit: BoxFit.cover),
                  )),
              Padding(
                padding: const EdgeInsets.only(
                  top: 100,
                  left: 10,
                ),
                child: Text(widget.food.productname!,
                    style: const TextStyle(
                        fontSize: 15, fontWeight: FontWeight.w500)),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 120, left: 10),
                child: Text('${widget.food.price!} Ks',
                    style: const TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                        color: Colors.green)),
              ),
              const Padding(
                padding: EdgeInsets.only(right: 10, bottom: 10),
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: Icon(Icons.add_circle_outline_rounded),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
