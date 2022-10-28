import 'package:flutter_demo/teams/teams_controller.dart';
import 'package:get/get.dart';

class TeamBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => TeamController());
  }

}