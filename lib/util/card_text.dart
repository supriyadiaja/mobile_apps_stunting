import 'package:flutter/material.dart';

class CardText extends StatelessWidget {
  const CardText(
      {super.key,
      required this.color,
      required this.title,
      required this.description});

  final title;
  final description;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Card(
        margin: EdgeInsets.only(bottom: 30),
        elevation: 5,
        color: color,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 17,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 17,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                textAlign: TextAlign.justify,
                description,
                style: TextStyle(
                  color: Colors.black54,
                  height: 1.7,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
