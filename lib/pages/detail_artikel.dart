import 'package:apps_stunting_mobile/util/navbar_content.dart';
import 'package:flutter/material.dart';

class DetailArtikel extends StatefulWidget {
  const DetailArtikel({super.key});

  @override
  State<DetailArtikel> createState() => _DetailArtikelState();
}

class _DetailArtikelState extends State<DetailArtikel> {
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
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              children: [
                SizedBox(
                  height: 80,
                ),
                Column(
                  children: [
                    Text(
                      "Artikel 1",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black45,
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      child: Text(
                        "6/23/2025",
                        style: TextStyle(
                          color: Colors.grey[400],
                          fontSize: 13,
                        ),
                      ),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(13),
                      ),
                      child: Image.network(
                        'https://i.pravatar.cc/500?u=jenifer',
                        fit: BoxFit.cover,
                        height: 220,
                        width: MediaQuery.of(context).size.width,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Text(
                    "orbi lobortis quis leo nec fringilla. Suspendisse volutpat, mauris ac dictum placerat, velit augue blandit velit, a fermentum erat arcu in odio. Mauris mi tortor, varius ut eleifend in, lacinia nec libero. Fusce sodales libero id urna viverra, a tincidunt velit congue. Praesent et pellentesque nibh. Sed ut cursus justo, at dapibus neque. Donec ornare arcu in ex malesuada varius. Sed id ex ligula.",
                    textAlign: TextAlign.justify,
                  ),
                ),
                SizedBox(height: 200,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
