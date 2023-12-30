// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:todo/components/my_button.dart';

class DialogBox extends StatelessWidget {
  const DialogBox({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Container(
        height: 120,
        child: Column(
          children: [
            // get user input
            TextField(
              decoration: InputDecoration(
                  hintText: "Add a new task",
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.red,
                    ),
                  )),
            ),

            //cancel button and save button below
            Row(
              children: [
                // save button
                MyButton(text: 'Save', onPressed: () {}),
                //cancel button
                MyButton(text: 'Cancel', onPressed: () {})
              ],
            )
          ],
        ),
      ),
    );
  }
}
