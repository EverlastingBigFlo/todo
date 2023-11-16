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
          SingleChildScrollView(
            child: Container(
              margin: EdgeInsets.only(top: 260),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    MyText(
                        text: 'Welcome back',
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                    SizedBox(height: 50),

                    Stack(
                      children: [
                        Image.asset(
                          'lib/assets/undraw_back_to_school_inwc 1.png',
                          height: 138,
                          width: 184.44,
                        ),
                      ],
                    ),
                    SizedBox(height: 50),

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
                    SizedBox(height: 20),

                    //forget password widget
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, '');
                      },
                      child: MyText(
                          text: 'Forget password ?',
                          fontSize: 16,
                          fontWeight: FontWeight.normal,
                          color: Color(0xFF50C2C9)),
                    ),
                    // password textfield end here
                    SizedBox(height: 40),
                    SizedBox(
                      width: 380,
                      height: 60, // Adjust the height as needed
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '');
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xFF50C2C9),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                          ),
                          child: MyText(
                            text: 'Login',
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                            fontSize: 18,
                          )),
                    ),
                    SizedBox(height: 40),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        MyText(
                            text: 'Don’t have an account ? ',
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                            color: Colors.black),
                        InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, 'register');
                          },
                          child: MyText(
                              text: 'Sign Up',
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
