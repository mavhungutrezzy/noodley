// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';


class RamenDishes extends StatelessWidget {

  final String nameOfDish;
  const RamenDishes({Key? key, required this.nameOfDish}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      nameOfDish,
      style: TextStyle(
        fontSize: 16,
      ),
    );
  }
}