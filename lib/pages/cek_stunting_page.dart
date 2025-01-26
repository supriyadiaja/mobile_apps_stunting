import 'package:apps_stunting_mobile/util/navbar_content.dart';
import 'package:flutter/material.dart';

class CekStuntingPage extends StatefulWidget {
  const CekStuntingPage({super.key});

  @override
  State<CekStuntingPage> createState() => _CekStuntingPageState();
}

class _CekStuntingPageState extends State<CekStuntingPage> {
  bool _isScrolled = false;

  TextEditingController controllerInputStunting = TextEditingController();

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
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              SizedBox(
                height: 80,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Nama Balita",
                    style: TextStyle(
                      fontSize: 14.5,
                      color: Colors.grey[600],
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      hoverColor: Colors.white,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(
                          color: Color(0xff00BD9D),
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(
                          color: Color(0xff00BD9D),
                        ),
                      ),
                    ),
                    style: TextStyle(
                      fontSize: 14.5,
                      color: Colors.grey[600],
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  // usia ----------------------------------------->
                  Text(
                    "Usia (bulan)",
                    style: TextStyle(
                      fontSize: 14.5,
                      color: Colors.grey[600],
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      hoverColor: Colors.white,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(
                          color: Color(0xff00BD9D),
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(
                          color: Color(0xff00BD9D),
                        ),
                      ),
                    ),
                    style: TextStyle(
                      fontSize: 14.5,
                      color: Colors.grey[600],
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  // Berat badan -------------------------->
                  Text(
                    "Berat Badan (kg)",
                    style: TextStyle(
                      fontSize: 14.5,
                      color: Colors.grey[600],
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      hoverColor: Colors.white,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(
                          color: Color(0xff00BD9D),
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(
                          color: Color(0xff00BD9D),
                        ),
                      ),
                    ),
                    style: TextStyle(
                      fontSize: 14.5,
                      color: Colors.grey[600],
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  // tinggi badan ----------------------------->
                  Text(
                    "Tinggi Badan (cm)",
                    style: TextStyle(
                      fontSize: 14.5,
                      color: Colors.grey[600],
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      hoverColor: Colors.white,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(
                          color: Color(0xff00BD9D),
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(
                          color: Color(0xff00BD9D),
                        ),
                      ),
                    ),
                    style: TextStyle(
                      fontSize: 14.5,
                      color: Colors.grey[600],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
              SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey[300],
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      child: Center(
                        child: Text(
                          "Reset",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            backgroundColor: Colors.amber,
                            title: Center(
                              child: Text("Ini tombol Hasil klasifikasi", textAlign: TextAlign.center,),
                            ),
                          );
                        },
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xff3BB557),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8),
                          child: Center(
                            child: Text(
                              "Klasifikasi",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
