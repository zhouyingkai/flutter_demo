import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_demo/common_widgets.dart';
import 'package:flutter_demo/login/login_controller.dart';
import 'package:flutter_demo/teams/teams_controller.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../model/user.dart';

class TeamPage extends GetView<TeamController>{
  LoginController loginController=Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonWidget.appBar(
        context,
        'Our Team',
        Icons.arrow_back,
        Colors.black,
      ),
      body: ListView.builder(
          itemBuilder: (BuildContext context, int index){
            return _itemView( context,  index);
        },
        itemCount: loginController.users.length,

        )
    );
  }

  Widget _itemView(BuildContext context, int index) {
    User user=loginController.users[index];
    return InkWell(
      highlightColor: Colors.grey[300],
      onTap: () => {
      },
      child: Container(
        color: Colors.white,
        height: 76,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Positioned(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: const Color(0xffe5e5e5),
                  ),
                  height: 50,
                  width: 50,
                  margin: const EdgeInsets.only(left: 15, top: 10, bottom: 10, right: 10),
                  child: commonAvatar(""),
                )),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                 const SizedBox(height: 4,),
                  Text(
                    user.name??"",
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: const TextStyle(fontSize: 16,color: Colors.black),
                  ),
                  const SizedBox(height: 2,),
                   Text(
                    user.email??"",
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                     style: const TextStyle(fontSize: 14,color: Color(0xff0500FF)),
                  ),
                  const SizedBox(height: 2,),
                  Text(
                    user.website??"",
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: const TextStyle(fontSize: 14,color: Color(0xffA4A4A4)),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
  commonAvatar(String url) {
    return Image.network(
      url,
      fit: BoxFit.fill,
      errorBuilder: (
          BuildContext context,
          Object error,
          StackTrace? stackTrace,
          ) {
        return const Text("load filed");
      },
    );
  }
}