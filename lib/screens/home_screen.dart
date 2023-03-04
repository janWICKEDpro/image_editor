import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Image Converter"),
        centerTitle: true,
      ),
      body: Center(
          child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.white.withOpacity(0.8),
                  offset: Offset(-6.0, -6.0),
                  blurRadius: 16.0,
                ),
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  offset: Offset(6.0, 6.0),
                  blurRadius: 16.0,
                ),
              ],
              color: Color(0xFFEFEEEE),
              borderRadius: BorderRadius.circular(12.0),
            ),
          ),
          Container(
            height: 100,
            width: 100,
            color: Colors.purpleAccent,
          )
        ],
      )),
    );
  }
}
