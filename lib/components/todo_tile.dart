// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';

class ToDoTile extends StatelessWidget {
  const ToDoTile({Key? key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment:
          Alignment.topLeft, // Align the entire container to the top-left
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Make Tutorial'),
        ],
      ),
    );
  }
}
