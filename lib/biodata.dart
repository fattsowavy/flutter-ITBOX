import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

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
        centerTitle: true,
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
                SizedBox(height: 50),
                Container(
                  child: Column(
                    children: [
                      Text("CERTIFICATION", style: TextStyle(fontSize: 20)),
                      Image.asset("assets/images/certif1.jpg", width: 360),
                      SizedBox(height: 10),
                      ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: WidgetStatePropertyAll(Colors.white),
                        ),
                        onPressed: () {
                          launchUrl(
                            Uri.parse(
                              "https://itbox.id/certificate-verifier/13EF9F3C2-13F17B5BA-12D455302/",
                            ),
                            mode: LaunchMode.externalApplication,
                          );
                        },
                        child: Text(
                          "Show Credentials",
                          style: TextStyle(color: Colors.black54, fontSize: 15),
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
