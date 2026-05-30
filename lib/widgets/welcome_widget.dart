import 'package:flutter/material.dart';

class WelcomeWidget extends StatelessWidget {
  String title;
  String description;
  String asset;
  Color bgColor;
  Size size;

  WelcomeWidget({
    super.key,
    required this.title,
    required this.description,
    required this.asset,
    required this.bgColor,
    required this.size,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 100, horizontal: 10),
      padding: EdgeInsets.all(32),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: bgColor,
      ),
      child: Column(
        children: [
          Image.asset("assets/images/$asset.png", height: size.height / 5),
          SizedBox(height: 32),
          Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 30,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            description,
            style: TextStyle(color: Colors.white, fontSize: 15),
          ),
        ],
      ),
    );
  }
}
