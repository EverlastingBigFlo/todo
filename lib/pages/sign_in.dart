// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:todo/components/my_text.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
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
          Container(
            margin: EdgeInsets.only(top: 180),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Stack(
                    children: [
                      Image.asset(
                        'lib/assets/undraw_back_to_school_inwc 1.png',
                        height: 194,
                        width: 254,
                      ),
                    ],
                  ),
                  SizedBox(height: 50),
                  MyText(
                      text: 'Gets things with TODs',
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                  SizedBox(height: 15),
                  SizedBox(
                      width: 200,
                      child: MyText(
                        color: Colors.black,
                        fontSize: 13,
                        fontWeight: FontWeight.normal,
                        text:
                            'Lorem ipsum dolor sit amet consectetur. Eget sit nec et euismod. Consequat urna quam felis interdum quisque. Malesuada adipiscing tristique ut eget sed.',
                      )),
                  SizedBox(height: 120),
                  SizedBox(
                    width: 380,
                    height: 60, // Adjust the height as needed
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, 'registration');
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFF50C2C9),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                        child: MyText(
                          text: 'Get Started',
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                          fontSize: 18,
                        )),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
