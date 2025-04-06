import 'package:flutter/material.dart';

class Biodata extends StatelessWidget {
  const Biodata({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Navigator.of(context).pop('/'),
          icon: Icon(
            Icons.keyboard_double_arrow_left,
            color: Colors.pinkAccent[200],
            size: 30,
          ),
        ),
        title: Text("Biodata", style: TextStyle(color: Colors.pinkAccent[200])),
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.pinkAccent[100],
          height: 1000,
          child: Center(
            child: Column(
              children: [
                SizedBox(height: 20),
                Container(
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 100,
                    child: CircleAvatar(
                      radius: 95,
                      backgroundImage: AssetImage('assets/images/gueh.jpg'),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  margin: EdgeInsets.only(right: 50, left: 50),
                  child: Column(
                    children: [
                      Text(
                        "Nama: Muh Fatwah Fajriansyah M",
                        style: TextStyle(
                          fontSize: 25,
                          fontFamily: "Bebas",
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        "NIM: 13020230319",
                        style: TextStyle(
                          fontSize: 25,
                          fontFamily: "Bebas",
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        "Prodi: Teknik Informatika",
                        style: TextStyle(
                          fontSize: 25,
                          fontFamily: "Bebas",
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
