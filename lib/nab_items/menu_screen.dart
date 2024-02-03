import 'package:batch2/widget/custom_text_field_widget.dart';
import 'package:flutter/material.dart';

class MenuScreen extends StatefulWidget {
  MenuScreen({super.key});

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  TextEditingController nameController = TextEditingController();

  var name = '';

  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Form(
          key: formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('controller: ${nameController.text}',
              style: TextStyle(
                color: Colors.black,
                fontSize: 20
              ),),
              SizedBox(
                height: 20,
              ),
              Text('var data :${name}',
              style: TextStyle(
                color: Colors.black,
                fontSize: 20
              ),),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30,right: 30),
                child: CustomTextFieldWidget(
                  controller: nameController,
                  obscureText: false,
                  keyboardType: TextInputType.name,
                  prefixIcon: Icon(Icons.menu),
                  prefixIconColor: Colors.red,
                )
              ),
              SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () {
                  if(formKey.currentState!.validate())
                  {
                    setState(() {
                    nameController.text = nameController.text;
                  });
                  }
                  
                },
                child: Container(
                  height: 30,
                  width: 50,
                  color: Colors.red,
                ),
              )
            ],
          ),
        )
        
        // Row(
        //   mainAxisAlignment: MainAxisAlignment.spaceAround,
        //   // crossAxisAlignment: CrossAxisAlignment.center,
        //   children: [
        //     Text('Hello'),
        //     Text('Hello1111'),
        //     Text('Hello2222222'),
        //     // Text('Hello333333333'),
        //     // Text('Hello4444444444'),
        //     // Text('Hello555'),
        //   ],
        // )
      )
    );
  }
}