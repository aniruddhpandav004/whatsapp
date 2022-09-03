import 'package:flutter/material.dart';

class Status extends StatefulWidget {
  const Status({Key? key}) : super(key: key);

  @override
  State<Status> createState() => _StatusState();
}

class _StatusState extends State<Status> {
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
    "My Status",
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
    "16 minutues ago",
    "31 minutues ago",
    "48 minutues ago",
    "Today,8:05 am",
    "Today,1:04 am",
    "Today,12:30 am",
    "Today,12:28 am",
    "Yesterday, 11:42 pm",
    "Yesterday, 11:42 pm",
    "Yesterday, 10:30 pm",
    "Yesterday, 10:20 pm",
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
              subtitle: Text("${msg[index]}"),
              leading: Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                 border: Border.all(color: Colors.green,width: 4)
                ),
                child: CircleAvatar(
                  backgroundImage: AssetImage("${image[index]}"),
                ),
              )
            );
          }),
    );
  }
}
