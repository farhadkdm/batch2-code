import 'package:batch2/nab_items/home_screen.dart';
import 'package:batch2/nab_items/menu_screen.dart';
import 'package:batch2/nab_items/profile_screen.dart';
import 'package:flutter/material.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int currentIndex = 0;

  List<Widget> screens = [
    HomeScreen(),
    MenuScreen(),
    ProfileScreen()
  ];

  onTapped(int index){
    setState(() {
      currentIndex = index;
      print(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            leading: Icon(Icons.home),
            title: Text('influxdev'),
            centerTitle: true,
            actions: [
              Icon(Icons.menu),
            ],
            backgroundColor: Colors.red,
            bottom: TabBar(
              tabs: [
              Icon(Icons.home),
              Icon(Icons.menu),
            ]),
          ),
          body: TabBarView(
            children: [
              HomeScreen(),
              MenuScreen(),
          ]), //screens[currentIndex],
          // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
          // floatingActionButton: FloatingActionButton(
          //   onPressed: (){},
          //   backgroundColor: Colors.red,
          //   child: Icon(Icons.home,color: Colors.black),
            
          //   ),
          // bottomNavigationBar: BottomAppBar(
          //   height: 40,
          //   color: Colors.teal,
          //   child: Center(
          //     child: Row(
          //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //       crossAxisAlignment: CrossAxisAlignment.center,
          //       children: [
          //         InkWell(
          //           onTap: (){
          //             setState(() {
          //               currentIndex = 0;
          //             });
          //           },
          //           child: Icon(Icons.home)),
          //         InkWell(
          //           onTap: (){
          //             setState(() {
          //               currentIndex = 1;
          //             });
          //           },
                    
          //           child: Icon(Icons.menu)),
          //         InkWell(
          //           onTap: (){
          //             setState(() {
          //               currentIndex = 2;
          //             });
          //           },
          //           child: Icon(Icons.people)),
          //       ],
          //     ),
          //   ),
          // )
        
      
          bottomNavigationBar: BottomNavigationBar(
            selectedItemColor: Colors.red,
            unselectedItemColor: Colors.black,
            backgroundColor: Colors.amber,
            onTap: onTapped,
            currentIndex: currentIndex,
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home'),
              BottomNavigationBarItem(icon: Icon(Icons.menu),label: 'Menu'),
              BottomNavigationBarItem(icon: Icon(Icons.people),label: 'Profile'),
            ]
            ),
        ),
      ),
    );
  }
}
