import 'package:apps_stunting_mobile/pages/detail_artikel.dart';
import 'package:apps_stunting_mobile/util/card_blog.dart';
import 'package:apps_stunting_mobile/util/navbar_content.dart';
import 'package:flutter/material.dart';

class ArtikelPage extends StatefulWidget {
  const ArtikelPage({super.key});

  @override
  State<ArtikelPage> createState() => _ArtikelPageState();
}

class _ArtikelPageState extends State<ArtikelPage> {
  bool _isScrolled = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Color(0xffF7FAFB),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            color: _isScrolled
                ? Colors.white.withValues(alpha: 0.9)
                : Colors.white,
          ),
        ),
        title: NavbarContent(),
      ),
      body: NotificationListener<ScrollNotification>(
        onNotification: (notification) {
          if (notification.metrics.pixels > 0 && !_isScrolled) {
            setState(() {
              _isScrolled = true;
            });
          } else if (notification.metrics.pixels <= 0 && _isScrolled) {
            setState(() {
              _isScrolled = false;
            });
          }
          return true;
        },
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                ),
                itemCount: 7,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => DetailArtikel(),),),
                    child: CardBlog(
                      image: 'https://i.pravatar.cc/100?u=jenifer',
                      title: 'Artikel 1',
                      dateTime: '6/26/2025',
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
