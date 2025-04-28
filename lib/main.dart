import 'package:first_figma_design/app_pages/app_pages.dart';
import 'package:first_figma_design/authentication/login.dart';
import 'package:first_figma_design/route_names/route_names.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
    initialRoute: RouteNames.login,
    routes: AppPages.getRoutes(),
      // home: ,
    );
  }
}
