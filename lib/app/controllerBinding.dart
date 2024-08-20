import 'package:fitness_tracking/bottomNavBar/main_bottomnav_Controller.dart';
import 'package:get/get.dart';




class ControllerBinder extends Bindings{
  @override
  void dependencies() {
    Get.put(MainBottomNavController());

  }
}