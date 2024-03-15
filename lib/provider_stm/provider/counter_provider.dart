import 'package:flutter/material.dart';

class CounterProvider extends ChangeNotifier{
  int value  = 0;

  void inc(){
    value++;
    notifyListeners();
  }

  void dec(){
    value--;
    notifyListeners();
  }
}