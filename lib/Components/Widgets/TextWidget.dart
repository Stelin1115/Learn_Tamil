import 'package:flutter/material.dart';
import 'package:learn_tamil/Components/constrants.dart';

class TextWidget extends StatelessWidget {
  final String text;
  final Color color;
  final size;
  final weight;
  const TextWidget({
    Key? key,
    required this.text,
    required this.color,
    required this.size,
    required this.weight,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          color: color,
          fontFamily: 'Poppins',
          fontSize: size,
          fontWeight: weight),
    );
  }
}
