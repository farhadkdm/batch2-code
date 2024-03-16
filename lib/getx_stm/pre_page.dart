import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PrePage extends StatelessWidget {
  const PrePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Next Page'),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(onPressed: (){
              Get.back();
            }, child: Text('Back')),
          ],
        ),
      ),
    );
  }
}