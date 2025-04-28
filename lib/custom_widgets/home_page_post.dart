import 'package:flutter/material.dart';
import 'package:blurrycontainer/blurrycontainer.dart';

class HomePagePost extends StatelessWidget {
  final String imageUrl;
  final String text;
  final String name;
  final String nickName;
  final String title;
  final String iconUrl;
  final String profileImage;

  const HomePagePost({
    super.key,
    required this.imageUrl,
    required this.text,
    required this.name,
    required this.nickName,
    required this.title,
    required this.iconUrl,
    required this.profileImage,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.45,
      width: double.infinity,
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.asset(
              imageUrl,
              height: MediaQuery.of(context).size.height * 0.45,
              width: double.infinity,
              fit: BoxFit.fill,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Container(
              height: 40,
              width: 113,
              decoration: BoxDecoration(
                color: Colors.white38,
                borderRadius: BorderRadius.circular(20),
                border: Border.all(width: 3, color: Colors.white54),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(40),
                      child: Image.asset(iconUrl, height: 30, width: 30),
                    ),
                    Text(
                      title,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 60,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                text,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 18,
                ),
              ),
            ),
          ),
          Positioned(
            bottom: -5,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.5,
                height: 60,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: Image.asset(
                        profileImage,
                        fit: BoxFit.cover,
                        height: 50,
                        width: 50,
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          name,
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                          ),
                        ),
                        Text(
                          nickName,
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            right: 0,
            child: Padding(
              padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * 0.09,
              ),
              child: BlurryContainer(
                height: 200,
                width: 70,
                color: Colors.white24,
                blur: 5,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25),
                  bottomLeft: Radius.circular(25),
                  topRight: Radius.circular(-40),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.white38,
                      child: Icon(
                        Icons.thumb_up,
                        color: Colors.white,
                        size: 20,
                      ),
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.white38,
                      child: Icon(
                        Icons.messenger_outlined,
                        color: Colors.white,
                        size: 20,
                      ),
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.white38,
                      child: Icon(
                        Icons.more_horiz,
                        color: Colors.white,
                        size: 20,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
