import 'package:flutter/material.dart';

class SilverAppBar extends StatelessWidget {
  const SilverAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFC6C6),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            leading: Icon(Icons.menu, color: Colors.black),
            expandedHeight: 240,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                "S L I V E R A P P B A R",
                style: TextStyle(color: Colors.black),
              ),
              centerTitle: true,
            ),
            backgroundColor: Color(0xFFFFDBDB),
          ),

          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Container(height: 350, color: Color(0xFF644A07)),
              ),
            ),
          ),

          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Container(height: 350, color: Color(0xFF594100)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
