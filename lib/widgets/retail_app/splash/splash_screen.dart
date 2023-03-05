import 'dart:async';

import 'package:flutter/material.dart';
import 'package:retail_app/layout/retail_app/retail_app_layout.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(Duration(seconds: 5), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => RetailAppLayout(),
          ));
    });
    LinearProgressIndicator();
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Center(
          child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Image.network(
              'https://www.edigitalagency.com.au/wp-content/uploads/Twitter-logo-png.png',
              height: 50,
              width: 50,
            ),
            Text('APP NAME'),
          ]),
        ),
      ),
    );
  }
}
