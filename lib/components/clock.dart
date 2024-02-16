// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_analog_clock/flutter_analog_clock.dart';

class Clock extends StatefulWidget {
  const Clock({super.key});

  @override
  State<Clock> createState() => _ClockState();
}

class _ClockState extends State<Clock> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 150,
      child: AnalogClock(
        dateTime: DateTime.now(),
        hourHandColor: Color(0xFF8FE1D7),
        minuteHandColor: Color(0xFF8FE1D7),
        secondHandColor: Color(0xFF8FE1D7),
        hourNumberColor: Color(0xFF8FE1D7),
        markingColor: Color(0xFF8FE1D7),
        centerPointColor: Color(0xFF8FE1D7),
      ),
    );
  }
}
