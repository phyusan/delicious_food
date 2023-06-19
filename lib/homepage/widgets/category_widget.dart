import 'package:flutter/material.dart';

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({
    super.key,
    required this.text,
    required this.click,
  });
  final String text;
  final VoidCallback click;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: click,
      child: Chip(
        backgroundColor: Colors.green,
        label: Text(text, style: const TextStyle(color: Colors.white)),
      ),
    );
  }
}
