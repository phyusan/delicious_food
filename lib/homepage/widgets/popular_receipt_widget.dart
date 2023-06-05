import 'package:flutter/material.dart';

class PopularReciptCardWidget extends StatelessWidget {
  const PopularReciptCardWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20),
      child: Container(
        width: 150,
        height: 200,
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
                  child: const Image(
                      image: AssetImage('assets/images/europe food1.png'),
                      fit: BoxFit.cover),
                )),
            const Padding(
              padding: EdgeInsets.only(
                top: 100,
                left: 10,
              ),
              child: Text('Moconar Pizza',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
            ),
            const Padding(
                padding: EdgeInsets.only(top: 120, left: 10),
                child: Row(
                  children: [
                    Text('S, M, L',
                        style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w500,
                            color: Colors.green)),
                    Text(' Sizes Available',
                        style: TextStyle(
                          fontSize: 13,
                          color: Colors.black,
                        )),
                  ],
                )),
            Padding(
                padding: const EdgeInsets.only(top: 150, left: 10),
                child: Row(
                  children: [
                    ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: const Image(
                            image: AssetImage('assets/images/japan food1.png'),
                            width: 25,
                            height: 25,
                            fit: BoxFit.cover)),
                    const SizedBox(width: 4),
                    const Text('ArchiwtKwes',
                        style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w500,
                            color: Colors.green)),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
