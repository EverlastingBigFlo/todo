// ignore_for_file: prefer_const_constructors
import 'package:google_fonts/google_fonts.dart';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Color myColor = Color(0xFF8FE1D7);

    return Scaffold(
      backgroundColor: const Color(0xFFF0F4F3),
      body: Stack(
        children: <Widget>[
          Positioned(
            left: -100,
            child: Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                color: myColor.withOpacity(0.7),
                borderRadius: BorderRadius.circular(100.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    spreadRadius: 5,
                    blurRadius: 20,
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: -90,
            child: Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                color: myColor.withOpacity(0.7),
                borderRadius: BorderRadius.circular(100.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    blurRadius: 20,
                  ),
                ],
              ),
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Stack(
                  children: [
                    Image.asset(
                      'lib/assets/undraw_done_checking_re_6vyx 1.png',
                      height: 194,
                      width: 254,
                    ),
                  ],
                ),
                SizedBox(height: 50),
                Text('Gets things with TODs',
                    style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold))),
                SizedBox(height: 15),
                SizedBox(
                  width: 200,
                  child: Text(
                    'Lorem ipsum dolor sit amet consectetur. Eget sit nec et euismod. Consequat urna quam felis interdum quisque. Malesuada adipiscing tristique ut eget sed.',
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                          fontSize: 13, fontWeight: FontWeight.normal),
                    ),
                  ),
                ),
                SizedBox(height: 50),
              ],
            ),
          ),
          Positioned(
            bottom: 10,
            child: ElevatedButton(
              onPressed: () {},
              child: Text(
                'Get Started',
                style: GoogleFonts.poppins(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}