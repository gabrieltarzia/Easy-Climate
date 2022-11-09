import 'package:get/get.dart';
import '../../modules/home/home.controller.dart';

class InitialBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(HomeController());
  }
}
