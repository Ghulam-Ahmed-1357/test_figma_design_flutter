import 'package:first_figma_design/views/authentication/login.dart';
import 'package:first_figma_design/views/home_page/home.dart';
import 'package:first_figma_design/views/main_page/main_page.dart';
import 'package:first_figma_design/views/match_page/matchPage.dart';
import 'package:flutter/cupertino.dart';

import '../route_names/route_names.dart';

class AppPages {
  static Map<String, WidgetBuilder> getRoutes() {
    return {
      RouteNames.login: (context) => const Login(),
      RouteNames.home: (context) => HomePage(),
      RouteNames.matchPage: (context) => const MatchPage(),
      RouteNames.mainPage: (context) => MainPage(),
    };
  }
}
