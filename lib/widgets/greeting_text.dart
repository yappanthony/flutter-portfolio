import 'package:flutter/material.dart';

class GreetingText extends StatelessWidget {

  final double headerFontSize;

  const GreetingText({
    super.key,
    required this.headerFontSize,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "👋 Hey there,",
          style: TextStyle(
            fontSize: headerFontSize,
            fontWeight: FontWeight.bold
          ),
        ),
        Text(
          "It's Anthony Yap.",
          style: TextStyle(
            fontSize: headerFontSize,
            fontWeight: FontWeight.bold
          ),
        ),
        const SizedBox(height: 20,),
        const Text(
          "Welcome to my developer profile! I'm Anthony Yap, a passionate software developer with four years of coding experience. I specialize in backend development and I'm always eager to learn new things and take on challenging projects",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
            color: Color.fromARGB(255, 143, 143, 143),
          ),
        ),
      ],
    );
  }
}