import 'package:flutter/material.dart';

class Chats extends StatefulWidget {
  const Chats({Key? key}) : super(key: key);

  @override
  State<Chats> createState() => _ChatsState();
}

class _ChatsState extends State<Chats> {
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
  List time = [
    "2:10 PM",
    "3:08 PM",
    "4:43 PM",
    "5:30 PM",
    "5:19 PM",
    "6:10 PM",
    "7:20 PM",
    "8:12 PM",
    "9:00 PM",
    "10:10 PM",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(itemCount: name.length,itemBuilder: (context,index){
        return ListTile(
          title: Text("${name[index]}",style: TextStyle(fontWeight: FontWeight.bold),),
          trailing: Text("${time[index]}"),
          subtitle: Text("${msg[index]}"),
          leading: CircleAvatar(
            radius: 25,
            backgroundImage: AssetImage("${image[index]}"),
          ),
        );
      }),
    );
  }
}
