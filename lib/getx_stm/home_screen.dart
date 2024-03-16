import 'package:batch2/getx_stm/controllers/counter_controller.dart';
import 'package:batch2/getx_stm/next_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GetxHomeScreen extends StatelessWidget {
  GetxHomeScreen({super.key});

  CounterController counterController = Get.put(CounterController());

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
    body: Obx(
      ()=> counterController.counterInc.value? Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: (){
              counterController.inc();
            }, child: Icon(Icons.add)),
            SizedBox(
              height: 20,
            ),
            Text(counterController.count.toString()),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(onPressed: (){
              counterController.dec();
            }, child: Icon(Icons.remove)),

            SizedBox(
              height: 20,
            ),
            ElevatedButton(onPressed: (){
              Get.dialog(
                barrierDismissible: false,
                barrierColor: Colors.teal,
                Dialog(

                  insetPadding: EdgeInsets.zero,
                child: Container(
                  height: 400,
                  width: 400,
                  
                  child: Text('Hello')),
              ));
            }, child: Icon(Icons.home)),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(onPressed: (){
              Get.snackbar('Success', 'Hello',backgroundColor: Colors.green);
            }, child: Icon(Icons.menu)),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(onPressed: (){
              Get.to(()=> NextPage());
            }, child: Text('Next')),
          ],
        ),
      ):SizedBox(),
    ),
          );
  }
}