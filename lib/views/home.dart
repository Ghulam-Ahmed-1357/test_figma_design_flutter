import 'package:first_figma_design/controller/controller.dart';
import 'package:first_figma_design/custom_widgets/home_page_post.dart';
import 'package:first_figma_design/custom_widgets/profile_image_with_name.dart';
import 'package:first_figma_design/models/model.dart';
import 'package:first_figma_design/route_names/route_names.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final MyGetController controller = Get.put(MyGetController());

  @override
  Widget build(BuildContext context) {
    List<Model> statusList = [
      Model(image: 'assets/images/prof2.png', title: 'Selena'),
      Model(image: 'assets/images/prof3.png', title: 'Clara'),
      Model(image: 'assets/images/prof4.png', title: 'Febian'),
      Model(image: 'assets/images/prof5.jfif', title: 'Gemi'),
      Model(image: 'assets/images/prof2.png', title: 'Gpt'),
    ];

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          automaticallyImplyLeading: false,
          title: Text(
            'Friendzy',
            style: TextStyle(fontWeight: FontWeight.w900, fontSize: 30),
          ),
          actions: [
            IconButton(
              onPressed: () {
                Get.toNamed(RouteNames.matchPage);
              },
              icon: Container(
                decoration: BoxDecoration(
                  border: Border.all(width: 1.5, color: Colors.grey.shade300),
                  borderRadius: BorderRadius.circular(200),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: Icon(Icons.notifications_none_sharp, size: 30),
                ),
              ),
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.00),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      ProfileImageWithName(
                        name: "My Story",
                        imageUrl: "assets/images/user_profile.png",
                        border: false,
                      ),
                      Row(
                        children: List.generate(statusList.length, (index) {
                          return ProfileImageWithName(
                            name: statusList[index].title,
                            imageUrl: statusList[index].image,
                            border: true,
                          );
                        }),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30, bottom: 15),
                  child: Container(
                    height: 45,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Obx(
                              () => GestureDetector(
                                onTap: () {
                                  controller.isMakeFriends.value = true;
                                },
                                child: Container(
                                  height: 42,
                                  decoration: BoxDecoration(
                                    color:
                                        controller.isMakeFriends.value
                                            ? Colors.white
                                            : Colors.grey.shade200,
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                      vertical: 8,
                                      horizontal: 30,
                                    ),
                                    child: Text(
                                      'Make Friends',
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Obx(
                              () => GestureDetector(
                                onTap: () {
                                  controller.isMakeFriends.value = false;
                                },
                                child: Container(
                                  height: 42,
                                  decoration: BoxDecoration(
                                    color:
                                        controller.isMakeFriends.value
                                            ? Colors.grey.shade200
                                            : Colors.white,
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                      vertical: 8,
                                      horizontal: 25,
                                    ),
                                    child: Text(
                                      'Search Partners',
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                //controller.is_mf.value
                Obx(
                  () => HomePagePost(
                    imageUrl:
                        controller.isMakeFriends.value
                            ? 'assets/images/i1.png'
                            : 'assets/images/image9.jpeg',
                    text:
                        'If you could live anywhere\nin the world, where would\nyou pick',
                    name: 'Miranda Kehlani',
                    nickName: 'STUTTGART',
                    title: 'Travel',
                    iconUrl: 'assets/images/image1.jfif',
                    profileImage: 'assets/images/u1.png',
                  ),
                ),
                SizedBox(height: 20,),
                Obx(
                      () => HomePagePost(
                    imageUrl:
                    controller.isMakeFriends.value
                        ? 'assets/images/image7.jfif'
                        : 'assets/images/image10.jpeg',
                    text:
                    'If you like to play football\nor any other game you \ncan pick',
                    name: 'Hejeal Damon',
                    nickName: 'SYAIOELL',
                    title: 'Football',
                    iconUrl: 'assets/images/image6.jfif',
                    profileImage: 'assets/images/image2.jfif',
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
