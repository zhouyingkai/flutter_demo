import 'package:flutter/material.dart';

class CommonWidget{

 static background({double whitePlaceHeight=81.0}){
    return Container(
      width: double.infinity,
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset("assets/images/logo.png",width: 236,height: 77,),
          SizedBox(height: whitePlaceHeight,),
          Expanded(child: Image.asset("assets/images/bg.png",width: double.infinity,fit: BoxFit.fill,))
        ],
      ),
    );
  }

 static commonButton({required VoidCallback? onPressed,double width=154.0,double height=40.0,required String text,required Color textColor,double fontSize=14}){
   return Container(
      width: width,
      height: height,
      child: TextButton(
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(const Color(0xffffffff)),
            shape: MaterialStateProperty.all(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(4)))),
        onPressed: onPressed,
        child:  Text(text,style: TextStyle(color: textColor ,fontSize: fontSize),),
      ),
    );
  }

 static AppBar appBar(
     BuildContext context, String title, IconData? backIcon, Color color,
     {void Function()? callback}) {
   return AppBar(
     leading: backIcon == null
         ? null
         : IconButton(
       icon: Icon(backIcon, color: color),
       onPressed: () {
         if (callback != null) {
           callback();
         } else {
           Navigator.pop(context);
         }
       },
     ),
     centerTitle: true,
     title: Text(
       title,
       style: TextStyle(color: color, fontFamily: 'Rubik'),
     ),
     backgroundColor: Colors.transparent,
     elevation: 0.0,
   );
 }
}