import 'package:flutter/material.dart';
import 'Home_Screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
      child: HomeScreen(),
      ),
      routes: {
        '/a': (context)=>HomeScreen(),
      },
    );

  }
}
