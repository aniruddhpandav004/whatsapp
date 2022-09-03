import 'dart:async';

import 'package:flutter/material.dart';

class FleshScreen extends StatefulWidget {
  const FleshScreen({Key? key}) : super(key: key);

  @override
  State<FleshScreen> createState() => _FleshScreenState();
}

class _FleshScreenState extends State<FleshScreen> {
  double i = 0;

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, 'second');
    });
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Center(
              child: Container(
                height: 150,
                width: 150,
                child: Image.asset("assets/Images/1234.png"),
              ),
            ),
          ),
          Text(
            "from",
            style: TextStyle(fontSize: 15, color: Colors.black),
          ),
          Text(
            "Meta",
            style: TextStyle(color: Colors.green, fontSize: 25),
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
