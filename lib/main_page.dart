import 'package:apps_stunting_mobile/pages/blog_page.dart';
import 'package:apps_stunting_mobile/pages/data_balita_page.dart';
import 'package:apps_stunting_mobile/pages/home_page.dart';
import 'package:apps_stunting_mobile/util/navbar_bottom.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _currentIndex = 0;

  // onTap icon
  void _onTap(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  bool _isScrolled = false;

  List<Widget> pages = [
    HomePage(),
    DataBalitaPage(),
    BlogPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          NotificationListener<ScrollNotification>(
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
            child: pages[_currentIndex],
          ),

          // bottmNavbar
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 50,
              color: Colors.white,
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 25.0,
                vertical: 20,
              ),
              child: Opacity(
                opacity: _isScrolled ? 1 : 1,
                child: Container(
                  height: 70,
                  decoration: BoxDecoration(
                    color: Colors.blue[100],
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      NavbarBottom(
                        onTap: () => _onTap(0),
                        label: 'Beranda',
                        icon: Icons.home_rounded,
                        index: 0,
                        currentIndex: _currentIndex,
                      ),
                      NavbarBottom(
                        onTap: () => _onTap(1),
                        label: 'Data Balita',
                        icon: Icons.bar_chart_outlined,
                        index: 1,
                        currentIndex: _currentIndex,
                      ),
                      NavbarBottom(
                        onTap: () => _onTap(2),
                        label: 'Blog',
                        icon: Icons.menu_book_outlined,
                        index: 2,
                        currentIndex: _currentIndex,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// bottomNavigationBar: Container(
//         color: Colors.transparent,
//         height: 100,
//         child: Stack(
//           children: [
//             Padding(
//               padding: const EdgeInsets.only(top: 40),
//               child: Container(
//                 color: Colors.white,
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.symmetric(
//                 // vertical: 15,
//                 horizontal: 30.0,
//               ),
//               child: ClipRRect(
//                 borderRadius: BorderRadius.circular(20),
//                 child: SizedBox(
//                   height: 80,
//                   width: MediaQuery.of(context).size.width,
//                   child: BottomNavigationBar(
//                     currentIndex: _currentIndex,
//                     onTap: _onTap,
//                     iconSize: 25,
//                     selectedItemColor: Colors.blue[900],
//                     backgroundColor: Colors.blue[100],
//                     elevation: 0,
//                     type: BottomNavigationBarType.fixed,
//                     selectedIconTheme: IconThemeData(size: 28),
//                     selectedLabelStyle: TextStyle(fontWeight: FontWeight.w500),
//                     items: [
//                       BottomNavigationBarItem(
//                         icon: Icon(Icons.home_rounded),
//                         label: "Beranda",
//                       ),
//                       BottomNavigationBarItem(
//                         icon: Icon(Icons.bar_chart_outlined),
//                         label: "Data Balita",
//                       ),
//                       BottomNavigationBarItem(
//                         icon: Icon(Icons.menu_book_outlined),
//                         label: "Blog",
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
