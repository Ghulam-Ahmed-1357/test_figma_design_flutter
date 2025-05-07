import 'package:flutter/material.dart';

class ProfileImageWithName extends StatelessWidget {
  final String name;
  final String imageUrl;
  final bool border;
  const ProfileImageWithName({super.key, required this.name, required this.imageUrl, required this.border});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 65,
            width: 65,
            decoration: BoxDecoration(
              border: border ? Border.all(
                width: 2,
                color: Colors.blue,
              ) : null,
              borderRadius: BorderRadius.circular(100),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Image.asset(imageUrl),
            ),
          ),
        ),
        Text(name),
      ],
    );
  }
}
