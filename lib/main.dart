import 'package:basic_flutter/biodata.dart';
import 'package:basic_flutter/home.dart';
import 'package:basic_flutter/secondPage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: MyHomePage(),
      initialRoute: '/',
      routes: {
        '/second-page': (context) => SecondPage(),
        '/home': (context) => Home(),
        '/biodata': (context) => Biodata(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Navigation and Routing")),
      body: Center(
        child: Column(
          children: [
            Text(
              "This is Main Page",
              style: TextStyle(fontSize: 20, color: Colors.pinkAccent),
            ),
            SizedBox(height: 50),

            Text("Second Page"),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/second-page');
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //     builder: (context) {
                //       return SecondPage();
                //     },
                //   ),
                // );
              },
              child: Text("Second Page"),
            ),
            SizedBox(height: 20),
            Text("Panda Page"),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/home');
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //     builder: (context) {
                //       return SecondPage();
                //     },
                //   ),
                // );
              },

              child: Text("Go to Panda Page"),
            ),

            SizedBox(height: 20),
            Text("Biodata Page"),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/biodata');
              },

              child: Text("Go to Biodata Page"),
            ),
          ],
        ),
      ),
    );
  }
}
