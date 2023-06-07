import 'package:flutter/material.dart';

class TraditionalCardWidget extends StatefulWidget {
  const TraditionalCardWidget({
    super.key,
    required this.setmenuphoto,
    required this.setmenuname,
  });
  final String setmenuphoto;
  final String setmenuname;
  @override
  State<TraditionalCardWidget> createState() => _TraditionalCardWidgetState();
}

class _TraditionalCardWidgetState extends State<TraditionalCardWidget> {
  bool heart = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, right: 10),
      child: Stack(
        children: [
          ClipRRect(
              borderRadius: BorderRadius.circular(25),
              child: Image(image: AssetImage(widget.setmenuphoto))),
          Padding(
            padding: const EdgeInsets.only(top: 120, left: 220, right: 10),
            child: Align(
                alignment: Alignment.bottomLeft,
                child: InkWell(
                  onTap: () {
                    heart = !heart;
                    setState(() {});
                    print(heart);
                  },
                  child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white70),
                      width: 50,
                      height: 50,
                      child: heart
                          ? const Icon(
                              Icons.favorite_outline,
                            )
                          : const Icon(Icons.favorite_rounded,
                              color: Colors.red)),
                )),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 130, left: 15, bottom: 20),
            child: Text(widget.setmenuname,
                style: const TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w900,
                    color: Colors.white)),
          ),
        ],
      ),
    );
  }
}
