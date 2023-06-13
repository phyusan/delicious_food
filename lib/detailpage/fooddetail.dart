import 'package:delicious_menu/homepage/domain/food_data.dart';
import 'package:delicious_menu/ordercard/order_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class DetailFoodWidget extends StatefulWidget {
  const DetailFoodWidget({
    super.key,
    required this.detailfood,
  });
  final FoodData detailfood;
  @override
  State<DetailFoodWidget> createState() => _DetailFoodWidgetState();
}

class _DetailFoodWidgetState extends State<DetailFoodWidget> {
  double? _ratingValue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: Padding(
          padding:
              const EdgeInsets.only(left: 80, bottom: 10, right: 10, top: 10),
          child: Row(
            children: [
              Container(
                  width: 100,
                  height: 30,
                  decoration: BoxDecoration(
                      color: Colors.green.shade200,
                      borderRadius: const BorderRadius.horizontal(
                          left: Radius.circular(20),
                          right: Radius.circular(20))),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 5, right: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                            onTap: () {
                              widget.detailfood.qty = widget.detailfood.qty + 1;
                              setState(() {});
                            },
                            child: const Icon(Icons.add)),
                        Text(widget.detailfood.qty.toString()),
                        InkWell(
                            onTap: () {
                              if (widget.detailfood.qty > 0) {
                                widget.detailfood.qty =
                                    widget.detailfood.qty - 1;
                              }
                              setState(() {});
                            },
                            child: const Icon(CupertinoIcons.minus))
                      ],
                    ),
                  )),
              const SizedBox(width: 30),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => OrderCardList(
                                ordercart: widget.detailfood,
                              )));
                },
                child: Container(
                    width: 50,
                    height: 40,
                    decoration: BoxDecoration(
                        color: Colors.green.shade500,
                        borderRadius: BorderRadius.circular(15)),
                    child: const Center(child: Text('ADD'))),
              )
            ],
          ),
        ),
        body: SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    children: [
                      const SizedBox(
                          width: double.infinity,
                          height: 300,
                          child: ClipRRect(
                            borderRadius: BorderRadius.vertical(
                                bottom: Radius.circular(20)),
                            child: Image(
                                image: AssetImage(
                                    'assets/images/europe food1.png'),
                                fit: BoxFit.cover),
                          )),
                      Padding(
                          padding: const EdgeInsets.only(left: 15, top: 70),
                          child: Container(
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: Colors.white70),
                              child: IconButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  icon: const Icon(Icons.arrow_back))))
                    ],
                  ),
                  Padding(
                      padding: const EdgeInsets.only(left: 10, top: 20),
                      child: Text(widget.detailfood.productname!,
                          style: const TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w600))),
                  Padding(
                      padding: const EdgeInsets.only(top: 10, left: 10),
                      child: Text('${widget.detailfood.price!} Ks',
                          style: const TextStyle(
                              fontSize: 18,
                              color: Colors.green,
                              fontWeight: FontWeight.w600))),
                  const Padding(
                      padding: EdgeInsets.only(left: 10, top: 10),
                      child: Chip(
                          backgroundColor: Color(0xffA0D8B3),
                          label: Text('Description',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w500)))),
                  const Padding(
                      padding: EdgeInsets.only(left: 10, top: 5),
                      child: Text(
                          '     This food is delicious cooking with tasting in happy minsset msosfeijnkjkjwoj.sjfoielsl  d is delicious cooking with chief Mr.Wi9sefsjfoejfoe',
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.w400))),
                  const Padding(
                      padding: EdgeInsets.only(left: 10, top: 20),
                      child: Chip(
                          backgroundColor: Color(0xffA0D8B3),
                          label: Text('Ingredient',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w500)))),
                  Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Chip(
                            avatar: Container(
                              width: 20,
                              height: 20,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20)),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: const Image(
                                    image: AssetImage(
                                        'assets/images/korea food1.png'),
                                    fit: BoxFit.cover),
                              ),
                            ),
                            label: const Text('Flour'),
                          ),
                          Chip(
                            avatar: Container(
                              width: 20,
                              height: 20,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20)),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: const Image(
                                    image: AssetImage(
                                        'assets/images/japan food1.png'),
                                    fit: BoxFit.cover),
                              ),
                            ),
                            label: const Text('Egg'),
                          ),
                          Chip(
                            avatar: Container(
                              width: 20,
                              height: 20,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20)),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: const Image(
                                    image: AssetImage(
                                        'assets/images/europe food1.png'),
                                    fit: BoxFit.cover),
                              ),
                            ),
                            label: const Text('Meal'),
                          ),
                          Chip(
                            avatar: Container(
                              width: 20,
                              height: 20,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20)),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: const Image(
                                    image: AssetImage(
                                        'assets/images/japan food1.png'),
                                    fit: BoxFit.cover),
                              ),
                            ),
                            label: const Text('Cheese'),
                          )
                        ],
                      )),
                  const Padding(
                      padding: EdgeInsets.only(left: 10, top: 20),
                      child: Chip(
                          backgroundColor: Color(0xffA0D8B3),
                          label: Text('Review',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w500)))),
                  Padding(
                      padding: const EdgeInsets.only(top: 5, left: 10),
                      child: RatingBar(
                          initialRating: 2.5,
                          direction: Axis.horizontal,
                          allowHalfRating: true,
                          itemCount: 5,
                          ratingWidget: RatingWidget(
                              full:
                                  const Icon(Icons.star, color: Colors.orange),
                              half: const Icon(
                                Icons.star_half,
                                color: Colors.orange,
                                size: 5,
                              ),
                              empty: const Icon(Icons.star_outline,
                                  color: Colors.orange, size: 5)),
                          onRatingUpdate: (value) {
                            setState(() {
                              _ratingValue = value;
                            });
                          })),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: SizedBox(
                      width: double.infinity,
                      child: Card(
                          elevation: 10,
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 20, top: 10, bottom: 10),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width: 40,
                                  height: 40,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(20),
                                    child: const Image(
                                        image: AssetImage(
                                            'assets/images/japan food1.png'),
                                        fit: BoxFit.cover),
                                  ),
                                ),
                                const SizedBox(width: 10),
                                const Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      width: 180,
                                      child: Text('Mrs.Surfawsiwist',
                                          style: TextStyle(
                                            fontSize: 15,
                                            color: Colors.green,
                                          )),
                                    ),
                                    SizedBox(height: 5),
                                    SizedBox(
                                      width: 220,
                                      height: 50,
                                      child: Text(
                                          '  Food is so delicious and eat so much, i like that.'),
                                    )
                                  ],
                                )
                              ],
                            ),
                          )),
                    ),
                  )
                ],
              ),
            )));
  }
}
