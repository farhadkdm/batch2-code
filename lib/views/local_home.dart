import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  TextEditingController nameController = TextEditingController();
  final box = GetStorage();

  var name = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Local Storage'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(name.toString()),
              SizedBox(
                height: 40,
              ),
              TextField(
                controller: nameController,
              ),
              SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {
                  print('1st $name');
                  box.write('name', nameController.text);
                  setState(() {
                    name= box.read('name');
                  });
                  print('2nd $name');
                },
                child: Container(
                  height: 40,
                  width: 60,
                  color: Colors.green,
                  child: Center(
                    child: Text('Submit'),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    box.remove('name');
                  });

                  print('data ${box.read('name')}');
                },
                child: Container(
                  height: 40,
                  width: 60,
                  color: Colors.red,
                  child: Center(
                    child: Text('Remove'),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}