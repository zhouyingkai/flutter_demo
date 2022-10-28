import 'package:flutter_demo/constants.dart';
import 'package:get/get.dart';

class HomeController extends GetxController{
  @override
  void onInit() {
    super.onInit();
  }
  onViewMore(){
    Get.offAndToNamed(Constants.route_login);
  }
}