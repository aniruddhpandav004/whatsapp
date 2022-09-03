import 'package:flutter/material.dart';

class Calls extends StatefulWidget {
  const Calls({Key? key}) : super(key: key);

  @override
  State<Calls> createState() => _CallsState();
}

class _CallsState extends State<Calls> {
  List image = [
    "assets/Images/1.jpg",
    "assets/Images/2.jpg",
    "assets/Images/3.png",
    "assets/Images/4.jpg",
    "assets/Images/5.jpg",
    "assets/Images/6.jpg",
    "assets/Images/7.jpg",
    "assets/Images/8.jpg",
    "assets/Images/9.jpg",
    "assets/Images/10.jpg",
    "assets/Images/11.jpg",
  ];
  List name = [
    "Aniruddh",
    "Utasv",
    "Hardik",
    "Yaman",
    "Sahil",
    "Mihir",
    "Milan",
    "Umang",
    "Darshan",
    "Dev",
  ];

  List msg = [
    "Hiiii 🤛 ",
    "How are you",
    "Hello",
    "Kem che?",
    "By",
    "Goog morning",
    "Hi",
    "😅",
    "Su kare tu",
    "🌈 ☀️ ",
    "Goog night",
  ];
  List buttons = [
    Icon(Icons.video_call_outlined),
    Icon(Icons.call),
    Icon(Icons.video_call_outlined),
    Icon(Icons.video_call_outlined),
    Icon(Icons.call),
    Icon(Icons.video_call_outlined),
    Icon(Icons.call),
    Icon(Icons.video_call_outlined),
    Icon(Icons.video_call_outlined),
    Icon(Icons.video_call_outlined),
    Icon(Icons.call),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: name.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(
              "${name[index]}",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            trailing: Icon(Icons.call,color: Colors.green,),
            subtitle: Text("${msg[index]}"),
            leading: CircleAvatar(
              radius: 25,
              backgroundImage: AssetImage("${image[index]}"),
            ),
          );
        },
      ),
    );
  }
}
