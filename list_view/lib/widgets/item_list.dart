import 'package:flutter/material.dart';

class Item extends StatelessWidget {
  final Color? color;
  final String text;
  final double height;
  final double width;

  const Item({
    super.key,
    this.color,
    required this.text,
    this.height = 100,
    this.width = 200
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      color: color,
      child: Text(text),
    );
  }
}