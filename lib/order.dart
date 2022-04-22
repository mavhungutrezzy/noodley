// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:noodley/product_card.dart';
import 'package:noodley/ramen_dishes.dart';


class OrderPage extends StatelessWidget {
  const OrderPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.green[600],
            foregroundColor: Colors.black,
            elevation: 0,
            
            leading: Icon(Icons.menu),
            actions: [Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.search),
            )],
          ),

          bottomNavigationBar: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
    
            ),
            child: BottomNavigationBar(
              backgroundColor: Colors.green[900],
              type: BottomNavigationBarType.fixed,
              items: [
                BottomNavigationBarItem(
                  icon: Icon(Icons.home_outlined),
                  label: "",
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.bookmark_border),
                  label: "",
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.person_outlined),
                  label: "",
                ),
              ],
            ),
          ),

          body: Container(
            
            color: Colors.green[600],
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(height: 20.0),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 0.0),
                  child: Text(
                    'Hungry?',
                    style: GoogleFonts.bebasNeue(
                      fontWeight: FontWeight.bold,
                      fontSize: 30.0,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Text(
                    'Order & Eat.',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),

                SizedBox(height: 30.0),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      RamenDishes(nameOfDish: 'Miso'),
                      RamenDishes(nameOfDish: 'Tonkotsu'),
                      RamenDishes(nameOfDish: 'Shio'),
                      RamenDishes(nameOfDish: 'shoyu'),
                      
                      Image.asset(
                        'assets/images/icons8-slider-50.png',
                        height: 30,
                      ),

                    ],
                  ),
                ),

                Container(
                  child: ProductCard(
                    name: 'Meat Miso',
                    description: 'Cream with strawberries',
                    imageUrl: 'assets/images/1.jpg',
                    price: '78'

                  ),
                )






              ],
            ),
          ),
        ),
      ),
    );
  }
}