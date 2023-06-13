import 'package:delicious_menu/Testing/testing.dart';
import 'package:delicious_menu/commonwidget/row_text_widget.dart';
import 'package:delicious_menu/homepage/domain/food_data.dart';
import 'package:delicious_menu/homepage/widgets/food.dart';
import 'package:delicious_menu/homepage/widgets/popular_receipt_widget.dart';
import 'package:delicious_menu/homepage/widgets/traditional_card_widget.dart';
import 'package:flutter/material.dart';

class HomeScreenWidget extends StatefulWidget {
  const HomeScreenWidget({
    super.key,
  });

  @override
  State<HomeScreenWidget> createState() => _HomeScreenWidgetState();
}

class _HomeScreenWidgetState extends State<HomeScreenWidget> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            width: double.infinity,
            height: 900,
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.only(top: 10, left: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Featured',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w600)),
                  const SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        TraditionalCardWidget(
                          setmenuname: 'Breakfast MenuSet',
                          setmenuphoto: 'assets/images/card2.png',
                        ),
                        SizedBox(width: 20),
                        TraditionalCardWidget(
                          setmenuname: 'Seafood MenuSet',
                          setmenuphoto: 'assets/images/europe food1.png',
                        ),
                        SizedBox(width: 20),
                        TraditionalCardWidget(
                          setmenuname: 'Food MenuSet',
                          setmenuphoto: 'assets/images/morning food1.png',
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10),
                  const RowTextWidget(Text1: 'Category', Text2: 'See all'),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Testing()));
                        },
                        child: const Chip(
                          backgroundColor: Colors.green,
                          label: Text('Morning Breakfast',
                              style: TextStyle(color: Colors.white)),
                        ),
                      ),
                      const SizedBox(width: 20),
                      const Chip(
                          backgroundColor: Colors.green,
                          label: Text(
                            'Dinner',
                            style: TextStyle(color: Colors.white),
                          )),
                    ],
                  ),
                  const SizedBox(height: 10),
                  const RowTextWidget(
                    Text1: 'Popular Recipt',
                    Text2: 'See all',
                  ),
                  const SizedBox(height: 10),
                  SizedBox(
                    height: 200,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          for (var i = 0; i <= 5; i++)
                            const PopularReciptCardWidget(),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  const RowTextWidget(
                    Text1: 'Food',
                    Text2: 'See all',
                  ),
                  const SizedBox(height: 10),
                  SizedBox(
                    height: 200,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          for (var i = 0; i < fooddata.length; i++)
                            FoodWidget(
                              food: fooddata[i],
                            ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
