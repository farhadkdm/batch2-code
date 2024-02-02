import 'package:flutter/material.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 30,
          width: 40,
          color: Colors.teal,
          child: Text('Click')),
      )
    );
  }
}