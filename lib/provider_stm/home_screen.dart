import 'package:batch2/provider_stm/provider/counter_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProviderHomeScreen extends StatelessWidget {
  const ProviderHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // var counter = Provider.of<CounterProvider>(context);
    return Consumer<CounterProvider>(
      builder: (context, counterProvider, child) {
        return Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(onPressed: (){
                // counter.inc();
                // context.read<CounterProvider>().inc();
                counterProvider.inc();
              }, child: Icon(Icons.add)),
              SizedBox(
                height: 20,
              ),
              // Text(context.watch<CounterProvider>().value.toString()),
              Text(counterProvider.value.toString()),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(onPressed: (){
                // counter.dec();
                // context.read<CounterProvider>().dec();
                counterProvider.dec();
              }, child: Icon(Icons.remove)),
            ],
          ),
        ),
      );}
    );
  }
}