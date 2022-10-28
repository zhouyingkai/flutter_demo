import 'package:flutter/material.dart';
import 'package:flutter_demo/constants.dart';
import 'package:flutter_demo/home/home_binding.dart';
import 'package:flutter_demo/home/home_page.dart';
import 'package:flutter_demo/login/login_binding.dart';
import 'package:flutter_demo/login/login_screen.dart';
import 'package:flutter_demo/my_translations.dart';
import 'package:flutter_demo/teams/team_binding.dart';
import 'package:flutter_demo/teams/team_page.dart';
import 'package:get/get.dart';

void main() {
  runApp( GetMaterialApp(
    initialRoute: Constants.route_home,
    defaultTransition: Transition.native,
    translations: MyTranslations(),
    locale: const Locale('en','US'),
    theme: ThemeData(
      primaryColor: Colors.white,
      primarySwatch: const MaterialColor(0xffffffff,<int, Color>{
        50: Color(0xffffffff),
        100: Color(0xffffffff),
        200: Color(0xffffffff),
        300: Color(0xffffffff),
        400: Color(0xffffffff),
        500: Color(0xffffffff),
        600: Color(0xffffffff),
        700: Color(0xffffffff),
        800: Color(0xffffffff),
        900: Color(0xffffffff),
      },
      ),
    ),
    getPages: [
      GetPage(name: Constants.route_home, page: ()=>HomePage(),binding: HomeBinding()),
      GetPage(name: Constants.route_login, page: ()=>LoginScreen(),binding: LoginBinding()),
      GetPage(name: Constants.route_team, page: ()=>TeamPage(),binding: TeamBinding())
    ],

  )
  );
}
