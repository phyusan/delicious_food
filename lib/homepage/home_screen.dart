import 'package:delicious_menu/homepage/widgets/popular_receipt_widget.dart';
import 'package:delicious_menu/homepage/widgets/traditional_card_widget.dart';
import 'package:flutter/material.dart';

class HomeScreenWidget extends StatelessWidget {
  const HomeScreenWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: double.infinity,
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
                      TraditionalCardWidget(),
                      SizedBox(width: 20),
                      TraditionalCardWidget(),
                      SizedBox(width: 20),
                      TraditionalCardWidget(),
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Category',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w600)),
                    Padding(
                      padding: EdgeInsets.only(right: 20),
                      child: Text('See All',
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: Colors.green)),
                    )
                  ],
                ),
                const SizedBox(height: 10),
                const Row(
                  children: [
                    Chip(
                      backgroundColor: Colors.green,
                      label: Text('Morning Breakfast',
                          style: TextStyle(color: Colors.white)),
                    ),
                    SizedBox(width: 20),
                    Chip(
                        backgroundColor: Colors.green,
                        label: Text(
                          'Dinner',
                          style: TextStyle(color: Colors.white),
                        )),
                  ],
                ),
                const SizedBox(height: 10),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Popular Receipt',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w600)),
                    Padding(
                      padding: EdgeInsets.only(right: 20),
                      child: Text('See All',
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: Colors.green)),
                    )
                  ],
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
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
