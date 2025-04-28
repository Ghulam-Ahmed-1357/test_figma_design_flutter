import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class MyGetController extends GetxController {
  RxInt selectedIndex = 0.obs;
  RxBool isMakeFriends = true.obs;
  void onButtonTapped(int index) {
    selectedIndex.value = index;
  }
}
