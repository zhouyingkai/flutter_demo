import 'package:get/get.dart';

class TeamController extends GetxController{
 var users=Get.arguments;
  @override
  void onInit() async {
    print(users.hashCode);
    super.onInit();
  }
}