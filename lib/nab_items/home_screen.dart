import 'package:batch2/widget/text_widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
HomeScreen({super.key});


  GlobalKey<ScaffoldState> draweKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: draweKey,
      backgroundColor: Colors.white,
      drawer: Drawer(
        child: Column(
          children: [
            Text('Click'),
            Text('Click'),
            Text('Click'),
            Text('Click'),
            Text('Click'),
            Text('Click'),
            Text('Click'),
            Text('Click'),
            Text('Click'),

            InkWell(
          onTap: () {
            draweKey.currentState!.openEndDrawer();
          },
          child: Container(
            height: 30,
            width: 40,
            color: Colors.teal,
            child: Text('Click')),
        ),
          ],
        ),
      ),
      body: Center(
        child: InkWell(
          onTap: () {
            draweKey.currentState!.openDrawer();
          },
          child: Container(
            height: 30,
            width: 40,
            color: Colors.teal,
            child: Text('Click')),
        ),
      )
      
      // Center(
      //   child: Stack(
      //     clipBehavior: Clip.none,
      //     alignment: Alignment.center,
      //     children: [
      //       Container(
      //         height: 100,
      //         width: 100,
      //         decoration: BoxDecoration(
      //           color: Colors.black,
      //           // border: Border.all(
      //           //   color: Colors.white,
      //           //   width: 5
      //           // ),
      //           borderRadius: BorderRadius.only(
      //             bottomLeft: Radius.circular(20),
      //             topLeft: Radius.circular(20),
      //             topRight: Radius.circular(20),
      //             bottomRight: Radius.circular(20),
      //           ),
      //           // image: DecorationImage(image: AssetImage('assets/images/test.jpg')),
      //           // gradient: LinearGradient(
      //           //   begin: Alignment.topLeft,
      //           //   end: Alignment.bottomRight,
      //           //   colors: [
      //           //   Colors.red,
      //           //   Colors.green,
      //           //   Colors.blue
      //           // ]),
      //           // boxShadow: [
      //           //   BoxShadow(
      //           //     color: Colors.black.withOpacity(1.0),
      //           //     offset: Offset(0, 5),
      //           //     blurRadius: 10
      //           //   ),
      //           //   BoxShadow(
      //           //     color: Colors.black.withOpacity(1.0),
      //           //     offset: Offset(0, 5),
      //           //     blurRadius: 10
      //           //   ),
      //           //   BoxShadow(
      //           //     color: Colors.black.withOpacity(1.0),
      //           //     offset: Offset(0, 5),
      //           //     blurRadius: 10
      //           //   ),
      //           //   BoxShadow(
      //           //     color: Colors.black.withOpacity(1.0),
      //           //     offset: Offset(0, 5),
      //           //     blurRadius: 10
      //           //   ),
      //           // ]
      //         ),
      //         // child: Padding(
      //         //   padding: EdgeInsets.symmetric(
      //         //     vertical: 20
      //         //   ),
      //         //   child: CustomText(text: 'Hello')),
      //       ),

      //       Positioned(
      //         top: -20,
      //         child: Container(
      //           height: 50,
      //           width: 50,
      //           color: Colors.teal,
      //         ),
      //       )
      //     ],
      //   )
        
      //   // CustomText(
      //   //   text: 'Hello HJGidgshd',
      //   // )
      // ),
    );
  }
}