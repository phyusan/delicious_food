import 'package:flutter/material.dart';

class RowTextWidget extends StatelessWidget {
  const RowTextWidget({
    super.key,
    required this.Text1,
    required this.Text2,
  });
  final String Text1;
  final String Text2;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(Text1,
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w600)),
        Padding(
          padding: const EdgeInsets.only(right: 20),
          child: Text(Text2,
              style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: Colors.green)),
        )
      ],
    );
  }
}
