import 'package:flutter/material.dart';
import 'package:flutter_demo/common_widgets.dart';
import 'package:flutter_demo/input_field.dart';
import 'package:get/get.dart';
import 'login_controller.dart';

class LoginScreen extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          appBar: CommonWidget.appBar(
            context,
            'login',
            Icons.arrow_back,
            Colors.white,
          ),
          body: Stack(
            children: [
              CommonWidget.background(),
              Container(
                padding: EdgeInsets.only(bottom: 100),
                alignment: Alignment.bottomCenter,
                child: _buildForms(context),
              )
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildForms(BuildContext context) {
    return Form(
      key: controller.loginFormKey,
      child: SingleChildScrollView(
        padding: const EdgeInsets.only(left: 24,right: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            InputField(
              controller: controller.loginUserController,
              keyboardType: TextInputType.text,
              placeholder: 'Account',
              validator: (value) {
                 if(!value!.isNotEmpty){
                   return 'please input your account ';
                 }
              },
            ),
            const SizedBox(height: 20,),
            InputField(
              controller: controller.loginPasswordController,
              keyboardType: TextInputType.text,
              placeholder: 'password',
              password: true,
              validator: (value) {
                if (value!.isEmpty) {
                  return 'password can not empty';
                }
                return null;
              },
            ),
            const SizedBox(height: 10,),
            CommonWidget.commonButton(onPressed: (){controller.login(context);}, text: "login", textColor: Color(0xff1C9941)),
            Container( alignment:Alignment.centerRight,child: TextButton(onPressed: (){},child: Text("Forget Password?"),),),
            TextButton(onPressed: (){controller.singUp(context);}, child: const Text("Sign up"))
          ],
        ),
      ),
    );
  }
}
