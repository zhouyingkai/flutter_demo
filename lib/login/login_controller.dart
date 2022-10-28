import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_demo/constants.dart';
import 'package:flutter_demo/http/http.dart';
import 'package:flutter_demo/model/user.dart';
import 'package:flutter_demo/teams/team_page.dart';
import 'package:get/get.dart';
import 'dart:io';

class LoginController extends GetxController {
  final GlobalKey<FormState> registerFormKey = GlobalKey<FormState>();
  final GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();
  final loginUserController = TextEditingController();
  final loginPasswordController = TextEditingController();
  late List<User>users;
  @override
  void onInit() async{
   users=await  getUsers();
  }

  @override
  void onReady() {
    super.onReady();
  }

  void login(BuildContext context) async {
    Get.to(()=>TeamPage(),arguments: users);
  }

  void singUp(BuildContext context) async{

  }

  @override
  void onClose() {
    super.onClose();
    loginUserController.dispose();
    loginPasswordController.dispose();
  }
}
