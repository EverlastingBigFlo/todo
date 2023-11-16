// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../components/my_text.dart';

class Registration extends StatefulWidget {
  const Registration({super.key});

  @override
  State<Registration> createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  @override
  Widget build(BuildContext context) {
    Color myColor = Color(0xFF8FE1D7);

    return Scaffold(
      backgroundColor: const Color(0xFFF0F4F3),
      body: Stack(
        //background colors starts here
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
          //background color ends here

          // registration introduction starts here
          SingleChildScrollView(
            child: Container(
              margin: EdgeInsets.only(top: 260),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    MyText(
                        text: 'Welcome to Onboard! ',
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                    SizedBox(height: 25),
                    SizedBox(
                      width: 200,
                      child: Text(
                        'Let’s help to meet up your tasks.',
                        style: TextStyle(fontSize: 13, height: 2),
                        textAlign: TextAlign.center,
                      ),
                    ),

                    //full name textfield starts here
                    SizedBox(height: 60),

                    Container(
                      height: 80, // Adjust the height as needed
                      padding: const EdgeInsets.fromLTRB(30, 0, 30, 30),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(30.0)),
                        ),
                        child: TextField(
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            hintText: 'Enter your full name',
                            hintStyle:
                                TextStyle(color: Colors.black54, fontSize: 13),
                            contentPadding: EdgeInsets.fromLTRB(25, 10, 25, 10),
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ),

                    // full name textfield end here

                    // email textfield starts here
                    Container(
                      height: 80, // Adjust the height as needed
                      padding: const EdgeInsets.fromLTRB(30, 0, 30, 30),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(30.0)),
                        ),
                        child: TextField(
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            hintText: 'Enter your Email',
                            hintStyle:
                                TextStyle(color: Colors.black54, fontSize: 13),
                            contentPadding: EdgeInsets.fromLTRB(25, 10, 25, 10),
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ),

                    // email textfield end here

                    // password textfield starts here
                    Container(
                      height: 80, // Adjust the height as needed
                      padding: const EdgeInsets.fromLTRB(30, 0, 30, 30),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(30.0)),
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Enter Password',
                            hintStyle:
                                TextStyle(color: Colors.black54, fontSize: 13),
                            contentPadding: EdgeInsets.fromLTRB(25, 10, 25, 10),
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ),

                    // password textfield end here

                    // confirm password textfield starts here
                    Container(
                      height: 80, // Adjust the height as needed
                      padding: const EdgeInsets.fromLTRB(30, 0, 30, 30),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(30.0)),
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Confirm Password',
                            hintStyle:
                                TextStyle(color: Colors.black54, fontSize: 13),
                            contentPadding: EdgeInsets.fromLTRB(25, 10, 25, 10),
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ),

                    // confirm password textfield end here

                    SizedBox(height: 35),

                    // register button implementation
                    SizedBox(
                      width: 380,
                      height: 60, // Adjust the height as needed
                      child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xFF50C2C9),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                          ),
                          child: MyText(
                            text: 'Register',
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                            fontSize: 18,
                          )),
                    ),
                    // registration introduction ends here

                    //already have account code here
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        MyText(
                            text: 'Already have an account ? ',
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                            color: Colors.black),
                        InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, 'SignIn');
                          },
                          child: MyText(
                              text: 'Sign In',
                              fontSize: 16,
                              fontWeight: FontWeight.normal,
                              color: Color(0xFF50C2C9)),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
