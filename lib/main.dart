import 'package:flutter/material.dart';
import 'package:todo/animate.dart';
// import 'package:todo/components/clock.dart';
import 'package:todo/pages/home.dart';
import 'package:todo/pages/registration.dart';
import 'package:todo/pages/sign_in.dart';

import 'pages/welcome.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ToDo App',
      initialRoute: '/',
      routes: {
        // '/': (context) => const HomePage(),
        '/': (context) => const WelcomePage(),
        // '/': (context) => MyAnimatedWidget(),
        'register': (context) => const Registration(),
        'SignIn': (context) => const SignIn(),
      },
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
    );
  }
}
