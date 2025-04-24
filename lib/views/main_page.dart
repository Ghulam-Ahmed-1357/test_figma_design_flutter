import 'package:first_figma_design/controller/controller.dart';
import 'package:first_figma_design/custom_widgets/custom_bottom_navigation_bar.dart';
import 'package:first_figma_design/views/home.dart';
import 'package:first_figma_design/views/matchPage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainPage extends StatelessWidget {
  MainPage({super.key});

  final MyGetController controller = Get.put(MyGetController());
  List<Widget> pages = [
    HomePage(),
    HomePage(),
    HomePage(),
    MatchPage(),
    HomePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomBottomNavigationBar(),
      body: Obx(() => pages[controller.selectedIndex.toInt()]),
    );
  }
}
