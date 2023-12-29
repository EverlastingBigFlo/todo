// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_super_parameters
// import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:todo/components/clock.dart';
import 'package:todo/components/dialog_box.dart';
import 'package:todo/components/my_text.dart';
import 'package:todo/components/todo_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // list of todo
  List toDoList = [
    ['Make Tutorial', false],
    ['Do Excercise', false]
  ];

// if the checkbox is tapped
  void checkBoxChanged(bool? value, int index) {
    setState(() {
      toDoList[index][1] = !toDoList[index][1];
    });
  }

//create new task
  void createNewTask() {
    showDialog(
      context: context,
      builder: (context) {
        return DialogBox();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    Color myColor = Color(0xFF8FE1D7);

    String getGreeting() {
      var hour = DateTime.now().hour;

      if (hour < 12) {
        return 'Good Morning';
      } else if (hour < 17) {
        return 'Good Afternoon';
      } else {
        return 'Good Evening';
      }
    }

    return Scaffold(
      backgroundColor: const Color(0xFFF0F4F3),
      body: Column(
        children: [
          Stack(
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
                bottom: 5,
                left: 140,
                child: Center(
                  child: Column(
                    // mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Clock(),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          MyText(
                              text: getGreeting(),
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Column(
            children: [
              //Header title
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: MyText(
                    text: 'Task List',
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),

              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Center(
                  child: Container(
                    width: double
                        .infinity, // Set the width to take up available width
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          spreadRadius: 2,
                          blurRadius: 5,
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        // daily task and add new icon
                        Container(
                          padding: EdgeInsets.all(10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Daily Task',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              // Add your new task icon here if needed
                              TextButton(
                                onPressed: createNewTask,
                                child: Icon(
                                  Icons.add,
                                  color: myColor,
                                  size: 50,
                                ),
                              )
                            ],
                          ),
                        ),

                        SizedBox(
                          height: 200, // Set a desired height for the ListView
                          child: ListView.builder(
                            itemCount: toDoList.length,
                            itemBuilder: (context, index) {
                              return ToDoTile(
                                taskName: toDoList[index][0],
                                taskCompleted: toDoList[index][1],
                                onChanged: (value) =>
                                    checkBoxChanged(value, index),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),

// ...
            ],
          )
        ],
      ),
    );
  }
}
