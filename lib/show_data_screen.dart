import 'package:batch2/nab_items/home_screen.dart';
import 'package:flutter/material.dart';

class ShowDataScreen extends StatelessWidget {
  const ShowDataScreen({super.key, this.text});

  final String? text;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(text!),
            GestureDetector(
              onTap: () {
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
              },
              child: Container(
                height: 40,
                width: 60,
                color: Colors.green,
                child: Center(
                  child: Text('Go Next Page',style: TextStyle(
                    color: Colors.white
                  ),),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).pop();
              },
              child: Container(
                height: 40,
                width: 60,
                color: Colors.red,
                child: Center(
                  child: Text('Back',style: TextStyle(
                    color: Colors.white
                  ),),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}