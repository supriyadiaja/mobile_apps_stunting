import 'package:apps_stunting_mobile/pages/home_page.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  int _currentIndex = 0;

  // onTap icon
  void _onTap(int index){
    setState(() {
      _currentIndex = index;
    });
  }

  List<Widget> pages = [
    HomePage(),
    Center(child: Text("Data Balita"),),
    Center(child: Text("Blog"),),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_currentIndex],
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 15,
          horizontal: 30.0,
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: SizedBox(
            height: 80,
            width: MediaQuery.of(context).size.width,
            child: BottomNavigationBar(
              currentIndex: _currentIndex,
              onTap: _onTap,
              iconSize: 30,
              selectedItemColor: Colors.blue[900],
              backgroundColor: Colors.blue[100],
              elevation: 0,
              type: BottomNavigationBarType.fixed,
              selectedIconTheme: IconThemeData(size: 33),
              selectedLabelStyle: TextStyle(fontWeight: FontWeight.w500),
              items: [
                BottomNavigationBarItem(
                  icon: Icon(Icons.home_rounded),
                  label: "Beranda",
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.bar_chart_outlined),
                  label: "Data Balita",
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.menu_book_outlined),
                  label: "Blog",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
