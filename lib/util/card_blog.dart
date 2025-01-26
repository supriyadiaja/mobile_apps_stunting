import 'package:flutter/material.dart';

class CardBlog extends StatelessWidget {
  const CardBlog({
    super.key,
    required this.image,
    required this.title,
    required this.dateTime,
    this.icon,
  });

  final String image;
  final String title;
  final String dateTime;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 3),
      child: SizedBox(
        width: 160,
        child: Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(13),
            ),
            elevation: 4,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(13),
                      ),
                      child: Image.network(
                        image,
                        fit: BoxFit.cover,
                        width: double.infinity,
                        height: 100,
                      ),
                    ),
                    Positioned(
                      child: Icon(
                        icon,
                        color: Colors.white,
                        size: 50,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      Text(
                        dateTime,
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 10,
                            color: Colors.grey),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
