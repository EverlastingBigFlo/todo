import 'package:flutter/material.dart';
import 'package:todo/animate.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(title: Text('Animated Widget')),
      body: Center(
        child: Container(
          width: 200, // Set a fixed width
          height: 200, // Set a fixed height
          child: MyAnimatedWidget(),
        ),
      ),
    ),
  ));
}
