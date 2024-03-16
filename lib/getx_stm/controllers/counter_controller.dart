import 'package:get/state_manager.dart';

class CounterController extends GetxController{
  var count = 0.obs;


  final counterInc = true.obs;

  void inc(){
    count++;
    refresh();
  }

  void dec(){
    count--;
    refresh();
  }

  @override
  void onInit() {
    
    super.onInit();
  }
}