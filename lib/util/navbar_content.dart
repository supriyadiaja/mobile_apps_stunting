import 'package:flutter/material.dart';

class NavbarContent extends StatelessWidget {
  const NavbarContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 15),
          child: SizedBox(
            height: 30,
            width: 30,
            child: Image.asset("name"),
          ),
        ),
      ],
    );
  }
}
