import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/components/carousel/gf_carousel.dart';

class CarouselPage extends StatelessWidget {
  final List<String> imageList = [
    "https://images.pexels.com/photos/35431582/pexels-photo-35431582.jpeg",
    "https://images.pexels.com/photos/349732/pexels-photo-349732.jpeg",
    "https://images.pexels.com/photos/19225106/pexels-photo-19225106.jpeg",
    "https://images.pexels.com/photos/14332269/pexels-photo-14332269.jpeg",
    "https://images.pexels.com/photos/37100584/pexels-photo-37100584.jpeg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text("Carousel Slider", style: TextStyle(fontSize: 35)),
            CarouselSlider(
              items: imageList
                  .map(
                    (e) => ClipRRect(
                      borderRadius: BorderRadius.circular(25),
                      child: Image.network(e, fit: BoxFit.cover),
                    ),
                  )
                  .toList(),

              options: CarouselOptions(
                height: 250,
                enlargeCenterPage: true,
                enlargeFactor: 0.2,
                initialPage: 2,
                autoPlay: true,
                autoPlayCurve: Curves.easeInCubic,
              ),
            ),
            Divider(),
            Text("GF Carousel", style: TextStyle(fontSize: 35)),
            GFCarousel(
              autoPlay: true,
              autoPlayAnimationDuration: Duration(seconds: 2),
              initialPage: 2,
              hasPagination: true,
              passiveIndicator: Colors.red,
              activeIndicator: Colors.yellow,
              enlargeMainPage: true,
              enableInfiniteScroll: false,
              pagerSize: 20,
              // height: 200,
              items: imageList
                  .map(
                    (e) => Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(25),
                        child: Image.network(e, fit: BoxFit.cover),
                      ),
                    ),
                  )
                  .toList(),
            ),
          ],
        ),
      ),
    );
  }
}
