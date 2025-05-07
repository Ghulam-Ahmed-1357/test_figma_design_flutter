import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  final String image;
  final int matchPercent;
  final double distance;
  final String name;
  final int age;
  final String nickName;

  Profile({
    super.key,
    required this.image,
    required this.matchPercent,
    required this.distance,
    required this.name,
    required this.age,
    required this.nickName,
  });

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width * 0.45;
    final height = MediaQuery.of(context).size.height * 0.3;
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.blue, width: 5),
        borderRadius: BorderRadius.circular(25),
      ),
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              image: DecorationImage(
                image: AssetImage(image),
                fit: BoxFit.fill,
              ),
            ),
            // width: MediaQuery.of(context).size.width * 0.45,
            // height: MediaQuery.of(context).size.height * 0.3,
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              // margin: EdgeInsets.only(left: 30),
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(15),
                  bottomRight: Radius.circular(15),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: Text(
                  '$matchPercent% Match',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 1,
            width: MediaQuery.of(context).size.width * 1,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: MediaQuery.of(context).size.height * 0.15),
                Container(
                  // margin: EdgeInsets.only(top: 120, left: 35),
                  decoration: BoxDecoration(
                    color: Colors.white54,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Text(
                      '$distance km away',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                Text(
                  '$name, $age',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                Text(nickName, style: TextStyle(color: Colors.white)),
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            child: Opacity(
              opacity: 0.2,
              child: Container(
                height: 50,
                width: MediaQuery.of(context).size.width * 0.45,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  border: Border.all(color: Colors.blue, width: 5),
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(25),
                    bottomLeft: Radius.circular(25),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
