// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:todo/components/my_text.dart';

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
            child: Container(
              width: 430,
              height: 292,
              decoration: BoxDecoration(
                color: Color(0xFF50C2C9),
                // borderRadius: BorderRadius.circular(100.0),
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

          // adding image to my background

          Positioned(
            bottom: 25,
            left: 140,
            child: Center(
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('lib/assets/Ellipse 3.png'),
                  SizedBox(
                    height: 20,
                  ),
                  MyText(
                      text: 'Welcome User',
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white)
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
