import 'package:flutter/material.dart';

class StackLayout extends StatelessWidget {
  const StackLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFFfbe5ae),
      child: Stack(
        children: [
          Positioned(
            top: 100,
            left: 40,
            width: 280,
            height: 280,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(20),
                border: Border.all(width: 5.0, color: Colors.black),
              ),
            ),
          ),
          Positioned(
            top: 120,
            left: 60,
            width: 280,
            height: 280,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(20),
                border: Border.all(width: 5.0, color: Colors.black),
              ),
            ),
          ),
          Positioned(
            top: 140,
            left: 80,
            width: 280,
            height: 280,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(20),
                border: Border.all(width: 5.0, color: Colors.black),
              ),
            ),
          ),
          Positioned(
            top: 450,
            left: 30,
            width: 330,
            height: 280,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.yellow,
                borderRadius: BorderRadius.circular(20),
                border: Border.all(width: 5.0, color: Colors.black),
              ),
              child: Center(
                child: TextButton(
                  onPressed: () => Navigator.of(context).pop('/'),
                  child: Text(
                    "Hello World",
                    style: TextStyle(fontSize: 30, color: Colors.red),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
