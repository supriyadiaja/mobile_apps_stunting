import 'package:apps_stunting_mobile/main_page.dart';
import 'package:flutter/material.dart';

class LoginUser extends StatelessWidget {
  const LoginUser({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Selamat Datang',
              style: TextStyle(
                color: Color(0xff00BD9D),
                fontSize: 27,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Nomor Induk Keluarga',
                  style: TextStyle(
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
                    hintText: "Masukkan Nomor",
                    hoverColor: Colors.white,
                    hintStyle: TextStyle(
                      color: Colors.grey[300],
                      fontSize: 13,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(
                        color: Color(0xff00BD9D),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(
                        color: Color(0xff00BD9D),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(builder: (contex) => MainPage()),
                        ),
                        style: ElevatedButton.styleFrom(
                          elevation: 4,
                          shadowColor: Colors.lightGreenAccent,
                          backgroundColor: Color(0xff00BD9D),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 13),
                          child: Text(
                            "Masuk",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14.5,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Text(
              "Hubungi Kader?",
              style: TextStyle(
                color: Color(0xff00BD9D),
                fontSize: 14,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
