import 'package:flutter/material.dart';

class MatchResults extends StatelessWidget {
  final String text;
  final String count;
  final String imageUrl;
  final Widget icon;

  const MatchResults({
    super.key,
    required this.imageUrl,
    required this.icon,
    required this.text,
    required this.count,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 65,
          width: 65,
          decoration: BoxDecoration(
            border: Border.all(width: 2, color: Colors.blue),
            borderRadius: BorderRadius.circular(100),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: Stack(
              children: [
                Image.asset(imageUrl, height: 65, width: 65),
                // Padding(padding: const EdgeInsets.all(20.0),
              Center(
                    child: icon
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: 8),
        Text.rich(
          TextSpan(
            text: text,
            children: [
              TextSpan(
                text: count,
                style: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
