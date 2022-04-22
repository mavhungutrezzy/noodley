// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';


class ProductCard extends StatelessWidget {

  final String name;
  final String description;
  final String price;
  final String imageUrl;
  
  const ProductCard({
    Key? key,
    required this.name,
    required this.description,
    required this.price,
    required this.imageUrl,
    
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Image.asset(imageUrl),
          Text(name),
          Text(description),
          Text('R $price'),

        ],
      )
    );
  }
}