import 'package:flutter/material.dart';
import 'package:it_consulting_webapp/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'IT-Consulting Company',
      theme: ThemeData(
        primarySwatch: Colors.teal,
        hoverColor: const Color(0xffcce7e6),
        textTheme: const TextTheme(
          headline1: TextStyle(fontSize: 55.0, fontWeight: FontWeight.bold),
          headline2: TextStyle(fontSize: 35.0, fontWeight: FontWeight.bold),
          bodyText1: TextStyle(fontSize: 20.0),
        ),
        iconTheme: const IconThemeData(
          color: Color(0xffcce7e6),
          size: 30,
        ),
      ),
      home: const Home_Screen(),
    );
  }
}
