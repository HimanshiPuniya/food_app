import 'package:flutter/material.dart';
import 'dart:async';

import 'home.dart';


class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 5),
            () =>
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder:
                    (context) => Home()
                )
            )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/splash_image.jpg'),
                  fit: BoxFit.cover
              )
          ),

        )

    );
  }
}

