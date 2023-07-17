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
  bool heart = true;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          width: 350,
          child: Stack(
            children: [
              SizedBox(
                width: 350,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image(
                    image: AssetImage(widget.setmenuphoto),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Align(
                  alignment: Alignment.bottomLeft,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(widget.setmenuname,
                        style: const TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w900,
                          color: Colors.white,
                        )),
                  )),
              Align(
                  alignment: Alignment.bottomRight,
                  child: Padding(
                      padding: const EdgeInsets.only(right: 30, bottom: 8),
                      child: InkWell(
                        onTap: () {
                          heart = !heart;
                          setState(() {});
                        },
                        child: Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                                color: Colors.white70,
                                borderRadius: BorderRadius.circular(10)),
                            child: heart
                                ? const Icon(Icons.favorite_outline)
                                : const Icon(Icons.favorite_rounded,
                                    color: Colors.red)),
                      ))),
            ],
          ),
        ),
      ],
    );
  }
}
