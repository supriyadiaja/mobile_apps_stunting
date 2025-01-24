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
          onPressed: () {
            showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  backgroundColor: Colors.amber,
                  title: Center(
                    child: Text(
                      "Ini tombol cek stunting",
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ),
                );
              },
            );
          },
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
