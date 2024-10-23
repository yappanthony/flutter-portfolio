import 'package:flutter/material.dart';

class GreetingText extends StatelessWidget {

  final double headerFontSize;
  final double textFontSize;

  const GreetingText({
    super.key,
    required this.headerFontSize,
    required this.textFontSize,
  });

  @override
  Widget build(BuildContext context) {
    bool isDesktop(BuildContext context) => 
      MediaQuery.sizeOf(context).width >= 1000;

    bool isMobile(BuildContext context) =>
      MediaQuery.sizeOf(context).width < 1000;
    return Stack(
      children: [
        if(isDesktop(context))
          Positioned(
            top: 115,
            child: Container(
              height: 20,
              width: 400,
              decoration: const BoxDecoration(
                gradient: LinearGradient(colors: [Color.fromARGB(255, 250, 169, 47), Color.fromARGB(255, 255, 193, 101)]),
              )
            ),
          ),
        Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if(isMobile(context))
            Text(
              "👋 Hey there, It's Anthony Yap.",
              style: TextStyle(
                fontSize: headerFontSize,
                fontWeight: FontWeight.bold
              ),
            ),
          if(isDesktop(context))
            Text(
              "👋 Hey there,",
              style: TextStyle(
                fontSize: headerFontSize,
                fontWeight: FontWeight.bold
              ),
            ),
          if(isDesktop(context))
            Text(
              "It's Anthony Yap.",
              overflow: TextOverflow.visible,
              style: TextStyle(
                fontSize: headerFontSize,
                fontWeight: FontWeight.bold,
              ),
            ),
          Text(
            "Welcome to my developer profile! I'm Anthony Yap, a passionate software developer with four years of coding experience. I specialize in backend development and I'm always eager to learn new things and take on challenging projects",
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: textFontSize,
              color: const Color.fromARGB(255, 143, 143, 143),
            ),
          ),
        ],
      )],
    );
  }
}