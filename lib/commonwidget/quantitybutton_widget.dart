import 'package:flutter/material.dart';

class QuantityButton extends StatelessWidget {
  const QuantityButton({
    super.key,
    required this.icon1,
    required this.action,
  });
  final IconData icon1;
  final VoidCallback action;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: action,
      child: Container(
          width: 30,
          height: 30,
          decoration: BoxDecoration(
              color: Colors.green.shade300,
              borderRadius: BorderRadius.circular(20)),
          child: Center(
            child: Icon(icon1),
          )),
    );
  }
}
