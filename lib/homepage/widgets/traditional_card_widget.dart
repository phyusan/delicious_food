import 'package:flutter/material.dart';

class TraditionalCardWidget extends StatefulWidget {
  const TraditionalCardWidget({
    super.key,
  });

  @override
  State<TraditionalCardWidget> createState() => _TraditionalCardWidgetState();
}

class _TraditionalCardWidgetState extends State<TraditionalCardWidget> {
  @override
  Widget build(BuildContext context) {
    bool heart = false;
    return Padding(
      padding: const EdgeInsets.only(top: 10, right: 10),
      child: Stack(
        children: [
          ClipRRect(
              borderRadius: BorderRadius.circular(25),
              child: const Image(image: AssetImage('assets/images/card2.png'))),
          Padding(
            padding: const EdgeInsets.only(top: 120, left: 220, right: 10),
            child: Align(
                alignment: Alignment.bottomLeft,
                child: InkWell(
                  onTap: () {
                    setState(() {
                      heart = !heart;
                      print(heart);
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white70),
                    width: 50,
                    height: 50,
                    child: const Icon(Icons.favorite_outline),
                  ),
                )),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 130, left: 15, bottom: 20),
            child: Text('Breakfast SetMenu',
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w900,
                    color: Colors.white)),
          ),
        ],
      ),
    );
  }
}
