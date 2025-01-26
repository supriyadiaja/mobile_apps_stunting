import 'package:apps_stunting_mobile/pages/cek_stunting_page.dart';
import 'package:flutter/material.dart';

class Navbar extends StatelessWidget {
  const Navbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          height: 30,
          width: 30,
          child: Image.asset("name"),
        ),

        // button
        ElevatedButton(
          onPressed: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => CekStuntingPage(),
            ),
          ),
          style: ElevatedButton.styleFrom(
            elevation: 0,
            backgroundColor: Color(0xff3BB557),
            padding: EdgeInsets.symmetric(
              vertical: 17,
              horizontal: 13,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
            ),
          ),
          child: Center(
            child: Text(
              'Cek Stunting',
              style: TextStyle(
                color: Colors.white,
                fontSize: 12,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
