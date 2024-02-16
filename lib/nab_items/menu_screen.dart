import 'package:batch2/show_data_screen.dart';
import 'package:batch2/widget/custom_text_field_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:page_transition/page_transition.dart';

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
      body: SingleChildScrollView(
        physics: AlwaysScrollableScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Center(
            
            child: Column(
              children: [
                TextField(
                  controller: nameController,
                ),
                GestureDetector(
                  onTap:() {
                    Navigator.push(context, PageTransition(
                      type: PageTransitionType.leftToRight, 
                    child: ShowDataScreen(
                      text: nameController.text.toString(),
                    ))
                    );
                  },
                  child: Container(
                    height: 40,
                    width: 60,
                    color: Colors.green,
                    child: Text('Submit'),
                  ),
                )
              ],
            ),

            
            // MasonryGridView.count(
            //   crossAxisCount: 3,
            //   mainAxisSpacing: 20,
            //   crossAxisSpacing: 20,
            //   itemCount: 10,
            //   shrinkWrap: true,
            //   itemBuilder: (context, index) {
            //     return GestureDetector(
            //       onTap:() {
            //         Navigator.push(context, MaterialPageRoute(builder: (context)=>ShowDataScreen(
            //           text: index.toString(),
            //         )));
            //       },
            //       child: Container(
            //         height: 200,
            //         width: 50,
            //         decoration: BoxDecoration(
            //           color: Colors.amber,
            //           borderRadius: BorderRadius.circular(30)
            //         ),
            //         child: Center(child: Text(index.toString())),
            //       ),
            //     );
            //   },
            // )
            
            
            
            //staggered gird with for lood
            // StaggeredGrid.count(
            //   crossAxisCount: 3,
            //   crossAxisSpacing: 20,
            //   mainAxisSpacing: 20,
            //   children: [
            //     for(var i = 0; i< 10; i++)
            //     Container(
            //       height: 200,
            //       width: 50,
            //       color: Colors.teal,
            //     )
            //   ]
              
            //   )
            
            //staggered count with list generated
            // StaggeredGrid.count(
            //   crossAxisCount: 3,
            //   crossAxisSpacing: 20,
            //   mainAxisSpacing: 20,
            //   children: List.generate(10, (index) => Container(
            //       height: 200,
            //       width: 50,
            //       color: Colors.amber,
            //     )),
              
            //   )
            
            //grid cout
            // GridView.count(
            //   shrinkWrap: true,
            //   crossAxisCount: 3,
            //   crossAxisSpacing: 20,
            //   mainAxisSpacing: 20,
            //   children: List.generate(10, (index) => Container(
            //       height: 200,
            //       width: 50,
            //       color: Colors.amber,
            //     )),
                
            //   )
            
            //grid builder
            // GridView.builder(
            //   shrinkWrap: true,
            //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            //     crossAxisCount: 3,
            //     crossAxisSpacing: 20,
            //     mainAxisSpacing: 20
            //     ), 
            //     itemCount: 10,
            //   itemBuilder: (context, index){
            //     return Container(
            //       height: 200,
            //       width: 50,
            //       color: Colors.amber,
            //     );
            //   }
            //   )
            
            //separated
            // ListView.separated(
            //   scrollDirection: Axis.vertical,
            //       itemCount: 100,
            //       shrinkWrap: true,
            //       physics: NeverScrollableScrollPhysics(),
            //       itemBuilder: (context, index) {
            //         return Container(
            //           height: 30,
            //           width: double.infinity,
            //           decoration: BoxDecoration(
            //             color: Colors.amber,
            //             borderRadius: BorderRadius.circular(20),
            //             boxShadow: [
            //               BoxShadow(
            //                 color: Colors.black.withOpacity(0.25),
            //               offset: Offset(0, 6),
            //               blurRadius: 15
            //               )
            //             ]
            //           ),
            //         );
            //       },
            //       separatorBuilder: (context, index) {
            //         return Divider(
            //           color: Colors.black,
            //         );
            //       },
            //     )
            
            
            //vertical
            // ListView.builder(
            //   scrollDirection: Axis.vertical,
            //       itemCount: 100,
            //       shrinkWrap: true,
            //       physics: NeverScrollableScrollPhysics(),
            //       itemBuilder: (context, index) {
            //         return Padding(
            //           padding: const EdgeInsets.only(bottom: 10),
            //           child: Container(
            //             height: 30,
            //             width: double.infinity,
            //             decoration: BoxDecoration(
            //               color: Colors.amber,
            //               borderRadius: BorderRadius.circular(20),
            //               boxShadow: [
            //                 BoxShadow(
            //                   color: Colors.black.withOpacity(0.25),
            //                 offset: Offset(0, 6),
            //                 blurRadius: 15
            //                 )
            //               ]
            //             ),
            //           ),
            //         );
            //       },
            //     ),

                //horizental

            //     SizedBox(
            //   height: 100,
            //   child: ListView.builder(
            //     scrollDirection: Axis.horizontal,
            //         itemCount: 100,
            //         shrinkWrap: true,
            //         itemBuilder: (context, index) {
            //           return Padding(
            //             padding: const EdgeInsets.only(right: 10),
            //             child: Container(
            //               height: 100,
            //               width: 100,
            //               decoration: BoxDecoration(
            //                 color: Colors.amber,
            //                 borderRadius: BorderRadius.circular(20),
            //                 boxShadow: [
            //                   BoxShadow(
            //                     color: Colors.black.withOpacity(0.25),
            //                   offset: Offset(0, 6),
            //                   blurRadius: 15
            //                   )
            //                 ]
            //               ),
            //             ),
            //           );
            //         },
            //       ),
            // )
            
            // Column(
            //   children: [
            //     SizedBox(
            //       height: 30,
            //     ),
            //     // Container(
            //     //   height: 300,
            //     //   width: 300,
            //     //   color: Colors.teal,
            //     //   child: Image.asset('assets/images/1.jpg',
            //     //   height: 300,width: 300,fit: BoxFit.fill,))
            //     // Container(
            //     //   height: 300,
            //     //   width: 300,
            //     //   color: Colors.teal,
            //     //   child: Image.network('https://influxdev.com/img/logo.png',
            //     //   height: 300,width: 300,fit: BoxFit.fill,))
          
            //     // Container(
            //     //   height: 300,
            //     //   width: 300,
            //     //   decoration: BoxDecoration(
            //     //     color: Colors.teal,
            //     //     borderRadius: BorderRadius.circular(30),
            //     //     // image: DecorationImage(
            //     //     //   image: AssetImage('assets/images/1.jpg'),
            //     //     //   fit: BoxFit.fill
            //     //     //   )
            //     //     // image: DecorationImage(
            //     //     //   image: NetworkImage('https://influxdev.com/img/logo.png'),
            //     //     //   fit: BoxFit.fill
            //     //     //   )
            //     //   ),
            //     //   // child: ClipRRect(
            //     //   //   borderRadius: BorderRadius.circular(30),
            //     //   //   child: Image.network('https://influxdev.com/img/logo.png',
            //     //   //   height: 300,width: 300,fit: BoxFit.fill,),
            //     //   // )
            //     //   child: ClipRRect(
            //     //     borderRadius: BorderRadius.circular(30),
            //     //     child: SvgPicture.asset('assets/images/11.svg',fit: BoxFit.fill,))
            //     //   )
          
            //     // CircleAvatar(
            //     //   backgroundColor: Color(0XFF000000),
            //     //   radius: 100,
            //     //   backgroundImage: AssetImage('assets/images/3.jpg',),
            //     //   // child: ClipRRect(
            //     //   //   borderRadius: BorderRadius.circular(100),
            //     //   //   child: Image.asset('assets/images/3.jpg')),
            //     // )
          
            //     //listview
          
                
            //   ],
            // )
            
            
            // Form(
            //   key: formKey,
            //   child: Column(
            //     mainAxisAlignment: MainAxisAlignment.center,
            //     children: [
            //       Text('controller: ${nameController.text}',
            //       style: TextStyle(
            //         color: Colors.black,
            //         fontSize: 20
            //       ),),
            //       SizedBox(
            //         height: 20,
            //       ),
            //       Text('var data :${name}',
            //       style: TextStyle(
            //         color: Colors.black,
            //         fontSize: 20
            //       ),),
            //       SizedBox(
            //         height: 20,
            //       ),
            //       Padding(
            //         padding: const EdgeInsets.only(left: 30,right: 30),
            //         child: CustomTextFieldWidget(
            //           controller: nameController,
            //           obscureText: false,
            //           keyboardType: TextInputType.name,
            //           prefixIcon: Icon(Icons.menu),
            //           prefixIconColor: Colors.red,
            //         )
            //       ),
            //       SizedBox(
            //         height: 20,
            //       ),
            //       InkWell(
            //         onTap: () {
            //           if(formKey.currentState!.validate())
            //           {
            //             setState(() {
            //             nameController.text = nameController.text;
            //           });
            //           }
                      
            //         },
            //         child: Container(
            //           height: 30,
            //           width: 50,
            //           color: Colors.red,
            //         ),
            //       )
            //     ],
            //   ),
            // )
            
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
          ),
        ),
      )
    );
  }
}