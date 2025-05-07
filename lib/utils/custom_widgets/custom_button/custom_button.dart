import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final Color color;
  final Color textColor;
  final double? height;
  final double? width;
  final String text;
  final Widget? icon;
  final double? iconSize;
  final double avatarRadius;
  final String? imageUrl;
  final double? imageHeight;
  final double? imageWidth;
  final VoidCallback onTap;

  const CustomButton({
    super.key,
    this.color = Colors.white,
    this.height,
    this.width,
    required this.text,
    this.icon,
    this.iconSize,
    required this.avatarRadius,
    this.imageUrl,
    required this.textColor, this.imageHeight, this.imageWidth, required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: color,
        ),
        height: height ?? 50,
        width: width ?? MediaQuery.of(context).size.height * 0.8,
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 25),
              child: CircleAvatar(
                radius: avatarRadius,
                backgroundColor: Colors.white,
                child: icon ?? Image.network(imageUrl!,height: imageHeight,width: imageWidth,),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Text(
                text,
                style: TextStyle(
                  color: textColor,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
