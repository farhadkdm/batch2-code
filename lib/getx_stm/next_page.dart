import 'package:batch2/getx_stm/pre_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NextPage extends StatelessWidget {
  const NextPage({super.key});

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
              Get.off(()=>PrePage());
            }, child: Text('Go to Pre')),
          ],
        ),
      ),
    );
  }
}