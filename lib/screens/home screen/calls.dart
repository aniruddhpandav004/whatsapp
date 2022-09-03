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
   "(2) 29 aug,9:42 pm",
   "29 aug,1:58 pm",
   "26 aug,6:20 pm",
   "20 aug,1:00 pm",
   "15 aug, :00 pm",
   "9 aug,7:00 pm",
   "28 july,2:26 pm",
   "15 july,1:59 pm",
   "10 june,5.36 pm",
   "8 june,4:02 pm",
   "5 june,3:08 pm",
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
