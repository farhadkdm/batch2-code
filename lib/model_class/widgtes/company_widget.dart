import 'package:batch2/model_class/companyModel.dart';
import 'package:batch2/model_class/details_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CompanyWidget extends StatelessWidget {
  const CompanyWidget({super.key, required this.data});
  final Company? data;


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Get.to(()=>DetailsScreen(
          data: data,
        ));
      },
      child: Container(
        height: 250,
        width: 160,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.25),
              offset: Offset(0, 2),
              blurRadius: 10
            )
          ],
          image: DecorationImage(image: AssetImage(data!.logo.toString()),fit: BoxFit.fill)
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(data!.title.toString(),style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w600,
              fontSize: 16
            ),)
          ],
        ),
      
      ),
    );
  }
}