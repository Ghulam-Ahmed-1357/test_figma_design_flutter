import 'package:first_figma_design/app_navigation/app_navigation.dart';
import 'package:first_figma_design/controller/controller.dart';
import 'package:first_figma_design/route_names/route_names.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  CustomBottomNavigationBar({super.key});

  final MyGetController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        currentIndex: controller.selectedIndex.toInt(),
        onTap: controller.onButtonTapped,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.white,
        items: [
          BottomNavigationBarItem(
            icon: CircleAvatar(
              backgroundColor:
                  controller.selectedIndex.toInt() == 0
                      ? Colors.blue
                      : Colors.white,
              child: Icon(
                Icons.home,
                color:
                    controller.selectedIndex.toInt() == 0
                        ? Colors.white
                        : Colors.grey,
              ),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: CircleAvatar(
              backgroundColor:
                  controller.selectedIndex.toInt() == 1
                      ? Colors.blue
                      : Colors.white,
              child: Icon(
                Icons.explore_outlined,
                color:
                    controller.selectedIndex.toInt() == 1
                        ? Colors.white
                        : Colors.grey,
              ),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: CircleAvatar(
              backgroundColor:
                  controller.selectedIndex.toInt() == 2
                      ? Colors.blue
                      : Colors.white,
              child: Icon(
                Icons.add,
                color:
                    controller.selectedIndex.toInt() == 2
                        ? Colors.white
                        : Colors.grey,
              ),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: CircleAvatar(
              backgroundColor:
                  controller.selectedIndex.toInt() == 3
                      ? Colors.blue
                      : Colors.white,
              child: Icon(
                Icons.person_2_rounded,
                color:
                    controller.selectedIndex.toInt() == 3
                        ? Colors.white
                        : Colors.grey,
              ),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: CircleAvatar(
              backgroundColor:
                  controller.selectedIndex.toInt() == 4
                      ? Colors.blue
                      : Colors.white,
              child: Icon(
                Icons.messenger,
                color:
                    controller.selectedIndex.toInt() == 4
                        ? Colors.white
                        : Colors.grey,
              ),
            ),
            label: '',
          ),
        ],
      ),
    );
  }
}
