import 'package:flutter/material.dart';

import 'src/pages/splash_screen.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Food App ' ,
      theme: ThemeData(
        primaryColor: Colors.white,
        primarySwatch: Colors.red,
      ),
      home: SplashScreen(),
    );
  }
}

