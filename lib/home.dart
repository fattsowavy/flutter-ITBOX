import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Widget pandaCard() {
    return Container(
      margin: const EdgeInsets.all(8),
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        border: Border.all(width: 2, color: Colors.black),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Image.asset("assets/images/panda.jpeg", width: 100, height: 100),
          ElevatedButton(
            // ignore: avoid_print
            onPressed: () => print("Panda"),
            child: Text(
              "Panda Button",
              style: TextStyle(color: Colors.black, fontSize: 15),
            ),
          ),
          Text("Nama: Panda"),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            print("Go Back");
            Navigator.of(context).pop('/');
          },
          icon: Icon(Icons.arrow_back_ios_new, color: Colors.white),
        ),
        backgroundColor: const Color.fromARGB(255, 213, 99, 205),
        title: Text("Panda Page", style: TextStyle(color: Colors.white)),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () => print("Profile"),
            icon: Icon(Icons.person, color: Colors.white),
          ),
          IconButton(
            onPressed: () => print("Search"),
            icon: Icon(Icons.search, color: Colors.white),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Row(
          children: [
            Column(
              children: [pandaCard(), pandaCard(), pandaCard(), pandaCard()],
            ),
            SizedBox(width: 40),
            Column(
              children: [pandaCard(), pandaCard(), pandaCard(), pandaCard()],
            ),
          ],
        ),
      ),
    );
  }
}
