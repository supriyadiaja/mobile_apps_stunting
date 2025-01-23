import 'package:flutter/material.dart';

class NavbarBottom extends StatelessWidget {
  final int index;
  final int currentIndex;
  final String label;
  final IconData icon;
  // void Function()? onTap;
  VoidCallback onTap;

  NavbarBottom({
    super.key,
    required this.onTap,
    required this.label,
    required this.icon,
    required this.index,
    required this.currentIndex,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap(),
      child: SizedBox(
        width: 80,
        child: Container(
          decoration: BoxDecoration(
            color: currentIndex == index ? Colors.white24 : Colors.blue[100],
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icon,
                size: currentIndex == index ? 30 : 28,
                color:
                    currentIndex == index ? Colors.blue[900] : Colors.blue[600],
              ),
              Text(
                label,
                style: TextStyle(
                  fontSize: currentIndex == index ? 14 : 12,
                  fontWeight:
                      currentIndex == index ? FontWeight.w700 : FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
