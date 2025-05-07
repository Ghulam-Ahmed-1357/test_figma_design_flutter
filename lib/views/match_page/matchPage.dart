import 'package:first_figma_design/constants/constants.dart';
import 'package:first_figma_design/models/model1/model1.dart';
import 'package:first_figma_design/utils/custom_widgets/match_results/match_results.dart';
import 'package:first_figma_design/utils/custom_widgets/profile/profile.dart';
import 'package:flutter/material.dart';

class MatchPage extends StatelessWidget {
  const MatchPage({super.key});

  @override
  Widget build(BuildContext context) {
    List<Model1> myGridList = [
      Model1(
        image: 'assets/images/profile1.png',
        matchPercent: 100,
        distance: 1.3,
        name: 'James',
        age: 20,
        nickName: 'HANOVER',
      ),
      Model1(
        image: 'assets/images/profile2.png',
        matchPercent: 94,
        distance: 2,
        name: 'Eddie',
        age: 23,
        nickName: 'DORTMUND',
      ),
      Model1(
        image: 'assets/images/profile3.png',
        matchPercent: 89,
        distance: 1.5,
        name: 'Brandon',
        age: 20,
        nickName: 'ALFRED',
      ),
      Model1(
        image: 'assets/images/profile4.png',
        matchPercent: 80,
        distance: 2.5,
        name: 'Alfredo',
        age: 20,
        nickName: 'HANDEN',
      ),
      Model1(
        image: 'assets/images/p31.jfif',
        matchPercent: 80,
        distance: 1.3,
        name: 'James',
        age: 20,
        nickName: 'WOLF',
      ),
      Model1(
        image: 'assets/images/p33.jfif',
        matchPercent: 92,
        distance: 1.3,
        name: 'Eddie',
        age: 20,
        nickName: 'HANOVER',
      ),
    ];

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            Constant.matches,
            style: TextStyle(fontWeight: FontWeight.w900, fontSize: 30),
          ),
          centerTitle: true,
          actions: [
            Container(
              decoration: BoxDecoration(
                border: Border.all(width: 1.5, color: Colors.grey.shade200),
                borderRadius: BorderRadius.circular(200),
              ),
              child: Padding(
                padding: const EdgeInsets.all(3.0),
                child: Icon(Icons.tune, size: 25),
              ),
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  MatchResults(
                    imageUrl: 'assets/images/pp1.png',
                    icon: Icon(
                      Icons.favorite_sharp,
                      color: Colors.white,
                      size: 30,
                    ),
                    text: Constant.likes,
                    count: " 32",
                  ),
                  SizedBox(width: 20),
                  MatchResults(
                    imageUrl: 'assets/images/pp2.png',
                    icon: Icon(Icons.messenger, color: Colors.white, size: 30),
                    text: Constant.connect,
                    count: " 15",
                  ),
                ],
              ),
              SizedBox(height: 15),
              Text.rich(
                TextSpan(
                  text: Constant.yourMatches,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  children: [
                    TextSpan(
                      text: '47',
                      style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15),
              Expanded(
                child: GridView.builder(
                  itemCount: myGridList.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 12,
                    mainAxisSpacing: 12,
                    childAspectRatio: 0.75, // Adjust if needed
                  ),
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context, index) {
                    final profile = myGridList[index];
                    return SizedBox(
                      child: Profile(
                        image: profile.image,
                        matchPercent: profile.matchPercent,
                        distance: profile.distance,
                        name: profile.name,
                        age: profile.age,
                        nickName: profile.nickName,
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
