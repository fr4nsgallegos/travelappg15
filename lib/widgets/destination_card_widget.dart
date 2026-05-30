import 'package:flutter/material.dart';

class DestinationCardWidget extends StatelessWidget {
  const DestinationCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 8),
      padding: EdgeInsets.all(16),
      width: 170,
      height: 220,
      decoration: BoxDecoration(
        // color: Colors.red,
        borderRadius: BorderRadius.circular(25),
        image: DecorationImage(
          colorFilter: ColorFilter.mode(
            Colors.black.withOpacity(0.4),
            BlendMode.srcATop,
          ),
          fit: BoxFit.cover,
          image: NetworkImage(
            "https://images.pexels.com/photos/25252469/pexels-photo-25252469.jpeg",
          ),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.45),
                  borderRadius: BorderRadius.circular(8),
                ),
                padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                child: Text("NEW", style: TextStyle(color: Colors.white)),
              ),
              SizedBox(
                height: 40,
                width: 80,
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Positioned(
                      right: 0,
                      child: CircleAvatar(
                        radius: 16,
                        backgroundImage: NetworkImage(
                          "https://images.pexels.com/photos/6616659/pexels-photo-6616659.jpeg",
                        ),
                      ),
                    ),
                    Positioned(
                      right: 20,
                      child: CircleAvatar(
                        radius: 16,
                        backgroundImage: NetworkImage(
                          "https://images.pexels.com/photos/9077998/pexels-photo-9077998.jpeg",
                        ),
                      ),
                    ),
                    Positioned(
                      right: 40,
                      child: CircleAvatar(
                        radius: 16,
                        backgroundImage: NetworkImage(
                          "https://images.pexels.com/photos/33209908/pexels-photo-33209908.jpeg",
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Thailand",
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                  Text("18 tours", style: TextStyle(color: Colors.white)),
                ],
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 4),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.35),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Column(
                  children: [
                    Text(
                      "4.5",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                    Icon(Icons.star, color: Colors.white),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
