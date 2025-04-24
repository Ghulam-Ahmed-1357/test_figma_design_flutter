import 'package:first_figma_design/authentication/login.dart';
import 'package:first_figma_design/route_names/route_names.dart';
import 'package:first_figma_design/views/home.dart';
import 'package:first_figma_design/views/matchPage.dart';
import 'package:flutter/cupertino.dart';

class AppPages{
  static Map<String,WidgetBuilder> getRoutes() {
    return {
      RouteNames.login : (context) => const Login(),
      RouteNames.home : (context) => const HomePage(),
      RouteNames.matchPage : (context) => const MatchPage(),
    };
  }
}