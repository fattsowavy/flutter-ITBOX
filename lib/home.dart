import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.home, color: Colors.white),
        title: const Text("Home Page", style: TextStyle(color: Colors.white)),
        actions: [
          Icon(Icons.search, color: Colors.white),
          Icon(Icons.person, color: Colors.white),
          Padding(padding: const EdgeInsets.all(5.0)),
        ],
        backgroundColor: Colors.deepPurple,
      ),
      body: ElevatedButton(
        onPressed: () => print("Tombol ditekan"),
        child: Text(
          "Elevated Button",
          style: TextStyle(color: Colors.deepOrange, fontSize: 25),
        ),
      ),

      // body: IconButton(
      //   onPressed: () {
      //     print("Tombol ditekan");
      //   },
      //   icon: Icon(Icons.alarm_add),
      //   color: Colors.red,
      //   iconSize: 50,
      // ),

      // body: Text(
      //   "Ini adalah halaman Home",
      //   style: TextStyle(color: Colors.deepPurple[400], fontSize: 30),
      // ),
    );
  }
}
