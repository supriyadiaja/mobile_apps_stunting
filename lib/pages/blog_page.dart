import 'package:apps_stunting_mobile/util/card_blog.dart';
import 'package:apps_stunting_mobile/util/navbar.dart';
import 'package:flutter/material.dart';

class BlogPage extends StatelessWidget {
  const BlogPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            color: Colors.white.withValues(alpha: 0.9),
          ),
        ),
        title: Navbar(),
      ),
      body: Column(
        children: [
          SizedBox(height: 80,),

          Row(
            children: [
              Column(
                children: [
                  Text("Artikel Terbaru"),
                  Row(
                    children: [
                      CardBlog(),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
