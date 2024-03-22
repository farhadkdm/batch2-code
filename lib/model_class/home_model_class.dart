import 'package:batch2/model_class/companyModel.dart';
import 'package:batch2/model_class/widgtes/company_widget.dart';
import 'package:flutter/material.dart';

class HomePageModelClass extends StatefulWidget {
  const HomePageModelClass({super.key});

  @override
  State<HomePageModelClass> createState() => _HomePageModelClassState();
}

class _HomePageModelClassState extends State<HomePageModelClass> {
  var company = Company.companyList();
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            GridView.count(
              shrinkWrap: true,
              crossAxisCount: 2,
              mainAxisSpacing: 16,
              crossAxisSpacing: 16,
              children: List.generate(company.length, (index) => CompanyWidget(
                data: company[index],
              )),
            ),
          ],
        ),
      ),
    );
  }
}