import 'package:flutter/material.dart';
import 'package:flutter_carousel_widget/flutter_carousel_widget.dart';

class BannerCarousel extends StatelessWidget {
  BannerCarousel({super.key});

  final List banner = [
    "Marsel",
    "Sarah",
    "Jhone",
    "Duck",
    "Serrly",
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: FlutterCarousel(
          options: FlutterCarouselOptions(
            height: 210.0,
            showIndicator: true,
            slideIndicator: CircularSlideIndicator(),
            autoPlay: true,
            autoPlayInterval: Duration(seconds: 5),
            enableInfiniteScroll: true,
          ),
          items: banner.map(
            (name) {
              return Builder(
                builder: (BuildContext contex) {
                  return Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.symmetric(horizontal: 5.0),
                    decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                      ),
                      image: DecorationImage(
                        image:
                            NetworkImage('https://i.pravatar.cc/500?u=${name}'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  );
                },
              );
            },
          ).toList()),
    );
  }
}
