import 'package:flutter/material.dart';

class CardBlog extends StatelessWidget {
  const CardBlog({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      child: Column(
        children: [
          Container(
            height: 60,
            color: Colors.blue,
          ),
          Text(
            "Artikel 3",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
          Text(
            "6/26/2025",
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 15,
            ),
          ),
        ],
      ),
    );
  }
}
