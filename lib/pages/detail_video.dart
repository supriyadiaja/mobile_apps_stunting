import 'package:apps_stunting_mobile/util/navbar_content.dart';
import 'package:flutter/material.dart';

class DetailVideo extends StatefulWidget {
  const DetailVideo({super.key});

  @override
  State<DetailVideo> createState() => _DetailVideoState();
}

class _DetailVideoState extends State<DetailVideo> {
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
                      "Edukasi Kesehantan untuk Balita",
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
                        "6/30/2025",
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
                        'https://i.pravatar.cc/500?u=manda',
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
                    "Mauris posuere, risus nec accumsan lacinia, tellus quam mollis elit, sodales dictum justo justo ac nunc. Quisque a metus vel risus ultrices fringilla. Orci varius natoque penatibus et magnis",
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
