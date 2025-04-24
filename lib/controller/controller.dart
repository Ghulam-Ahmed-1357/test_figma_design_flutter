import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class MyGetController extends GetxController {
  final PageController pageController = PageController(initialPage: 0);
  RxInt selectedIndex = 0.obs;
  RxBool is_mf = true.obs;
  RxBool is_sp = false.obs;
  void onButtonTapped(int index) {
    selectedIndex.value = index;
    pageController.jumpToPage(index);
  }
}
