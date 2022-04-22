// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:noodley/order.dart';


class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Size size = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
        color: Color.fromARGB(0, 80, 86, 87),
      ),
      child: Column(
        
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 30.0),
            child: Image.asset(
              'assets/images/welcome_udon.png',         
            ),
          ),


          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50.0),
            child: Text(
              'Buy Noodles Easily With Us',
              style: GoogleFonts.bebasNeue(
                fontWeight: FontWeight.bold,
                fontSize: 50,
              ),
              textAlign: TextAlign.center,
              ),
          ),

          SizedBox(height: 10.0),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 80.0),
            child: Text(
              'Enjoy noodles and explore your world with this application',
              style: GoogleFonts.roboto(
                fontSize: 16,
                color: Colors.grey[500],
              ),
              textAlign: TextAlign.center,
            ),
          ),
          
          SizedBox(height: 30.0),

          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const OrderPage()),
              );
            },
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 50.0, vertical: 25.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.green[500],
              ),
              // color: Colors.green[600],
              child: Text(
                'Order Now',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}