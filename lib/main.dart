
import 'package:flutter/material.dart';
import 'package:whatsapp/screens/fleshScreen.dart';
import 'package:whatsapp/screens/home%20screen/homeScreen.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/' : (context) => FleshScreen(),
        'second' : (context) => HomeScreen(),
      },
    ),
  );
}
