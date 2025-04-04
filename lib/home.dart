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
        leading: IconButton(
          onPressed: () => print("Home"),
          icon: Icon(Icons.home, color: Colors.white),
        ),
        title: const Text("Home Page", style: TextStyle(color: Colors.white)),
        actions: [
          IconButton(
            onPressed: () => print("Search"),
            icon: Icon(Icons.search, color: Colors.white),
          ),
          IconButton(
            onPressed: () => print("Profile"),
            icon: Icon(Icons.person, color: Colors.white),
          ),
          Padding(padding: const EdgeInsets.all(1.0)),
        ],
        backgroundColor: Colors.deepPurple,
      ),
      body: Container(
        child: Center(
          child: Column(
            children: [
              Image.asset("assets/images/panda.jpeg", width: 200, height: 100),
              ElevatedButton(
                onPressed: () => print("Tombol ditekan"),
                child: Text(
                  "Elevated Button",
                  style: TextStyle(color: Colors.deepOrange, fontSize: 15),
                ),
              ),
              Text("Nama: "),
              Text("Panda"),
            ],
          ),
        ),
      ),
    );
  }
}
