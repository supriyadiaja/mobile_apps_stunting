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
          SizedBox(
            height: 80,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      children: [
                        Text(
                          "Artikel Terbaru",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        SizedBox(
                          height: 150,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                              CardBlog(
                                image: 'https://i.pravatar.cc/100?u=',
                                title: "Artikel 3",
                                dateTime: "6/20/2025",
                              ),
                              CardBlog(
                                image: 'https://i.pravatar.cc/100?u=',
                                title: "Artikel 2",
                                dateTime: "6/15/2025",
                              ),
                              CardBlog(
                                image: 'https://i.pravatar.cc/100?u=',
                                title: "Artikel 1",
                                dateTime: "5/8/2025",
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
