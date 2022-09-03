import 'package:flutter/material.dart';
import 'package:whatsapp/screens/home%20screen/calls.dart';
import 'package:whatsapp/screens/home%20screen/chats.dart';
import 'package:whatsapp/screens/home%20screen/status.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff128C7E),
          leading: Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "WhatsApp",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
          ),
          leadingWidth: 130,
          actions: [
            Icon(Icons.search),
            SizedBox(width: 10),
            Icon(Icons.more_vert_outlined),
            SizedBox(width: 5),
          ],
          bottom: TabBar(tabs: [
            Tab(
              child: Text("CHATS"),
            ),
            Tab(
              child: Text("STATUS"),
            ),
            Tab(
              child: Text("CALLS"),
            ),
          ], indicatorColor: Colors.white),
        ),
        body: TabBarView(
          children: [
            Chats(),Status(),Calls(),
          ],
        ),
      ),
    );
  }
}
