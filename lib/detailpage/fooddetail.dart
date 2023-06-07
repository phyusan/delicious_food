import 'package:flutter/material.dart';

class DetailFoodWidget extends StatefulWidget {
  const DetailFoodWidget({super.key});

  @override
  State<DetailFoodWidget> createState() => _DetailFoodWidgetState();
}

class _DetailFoodWidgetState extends State<DetailFoodWidget> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                    width: double.infinity,
                    height: 300,
                    child: ClipRRect(
                      borderRadius:
                          BorderRadius.vertical(bottom: Radius.circular(20)),
                      child: Image(
                          image: AssetImage('assets/images/europe food1.png'),
                          fit: BoxFit.cover),
                    )),
                Padding(
                    padding: EdgeInsets.only(left: 10, top: 20),
                    child: Text('Mocha Cheese Pizza',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w600))),
                Padding(
                    padding: EdgeInsets.only(top: 10, left: 10),
                    child: Text('12000 Ks',
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.green,
                            fontWeight: FontWeight.w600))),
                Padding(
                    padding: EdgeInsets.only(left: 10, top: 10),
                    child: Chip(
                        label: Text('Description',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w500)))),
                Padding(
                    padding: EdgeInsets.only(left: 10, top: 5),
                    child: Text(
                        '     This food is delicious cooking with tasting in happy minsset msosfeijnkjkjwoj.sjfoielsl  d is delicious cooking with chief Mr.Wi9sefsjfoejfoe',
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.w400))),
                Padding(
                    padding: EdgeInsets.only(left: 10, top: 20),
                    child: Chip(
                        label: Text('Ingredient',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w500)))),
                Padding(
                    padding: EdgeInsets.only(left: 10, right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Chip(
                          avatar: CircleAvatar(
                            backgroundColor: Colors.greenAccent,
                          ),
                          label: Text('Flour'),
                        ),
                        Chip(
                          avatar: CircleAvatar(
                            backgroundColor: Colors.greenAccent,
                          ),
                          label: Text('Egg'),
                        ),
                        Chip(
                          avatar: CircleAvatar(
                            backgroundColor: Colors.greenAccent,
                          ),
                          label: Text('Meal'),
                        ),
                        Chip(
                          avatar: CircleAvatar(
                            backgroundColor: Colors.greenAccent,
                          ),
                          label: Text('Cheese'),
                        )
                      ],
                    ))
              ],
            )));
  }
}
