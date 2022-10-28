import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_demo/common_widgets.dart';
import 'package:flutter_demo/home/home_controller.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class HomePage extends GetView<HomeController>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(shadowColor: Colors.white,elevation: 0,),
      body: Stack(
        children: [
          CommonWidget.background(),
          Positioned(
              left: (ScreenUtil.defaultSize.width-154)/2,
              bottom: 227,
              child:
              CommonWidget.commonButton(
                  onPressed: (){
                    controller.onViewMore();
                  },
                  textColor: Color(0xff414C48),text: "View More !")

          )
        ],
      ),
    );
  }


}