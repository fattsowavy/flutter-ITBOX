import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';

class DarkMode extends StatefulWidget {
  const DarkMode({super.key});

  @override
  State<DarkMode> createState() => _DarkModeState();
}

class _DarkModeState extends State<DarkMode> {
  String mode = "dark";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Change Theme")),
      body: Center(
        child: Column(
          children: [
            ListTile(
              title: Text("Dark Mode", style: TextStyle(fontSize: 20)),
              leading: Radio<String>(
                value: "Dark",
                groupValue: mode,
                onChanged: (value) {
                  setState(() {
                    mode = value!;
                    Get.changeTheme(ThemeData.dark());
                  });
                },
              ),
            ),
            ListTile(
              title: Text("Light Mode", style: TextStyle(fontSize: 20)),
              leading: Radio<String>(
                value: "Light",
                groupValue: mode,
                onChanged: (value) {
                  setState(() {
                    mode = value!;
                    Get.changeTheme(ThemeData.light());
                  });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
