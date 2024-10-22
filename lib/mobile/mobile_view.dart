import 'package:flutter/material.dart';
import '../widgets/socials.dart';
import '../widgets/greeting_text.dart';

class MobileView extends StatelessWidget {
  const MobileView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(30, 20, 30, 15),
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [Color.fromARGB(255, 255, 252, 229), Colors.white],
          begin: Alignment.bottomCenter,
        )
      ),
      child: Column(
        children: [
          const CircleAvatar(
            backgroundImage: AssetImage('../assets/id-pic.png'),
            backgroundColor: Colors.transparent,
            maxRadius: 200,
          ),
          const SizedBox(height: 25),
          const Socials(),
          const SizedBox(height: 15),
          const GreetingText(headerFontSize:42, textFontSize:20),
    
          const SizedBox(height: 50),
    
          const Text(
            "Developing Software with a Passion",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),
          ),
    
          const SizedBox(height: 20,),
    
          ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Image.asset(
              '../assets/laptop-code.jpg',
            ),
          ),
    
          const SizedBox(height: 20),
    
          const Text(
            "As a dedicated software developer, I approach every project with a deep-rooted passion for crafting innovative and efficient solutions. "
            "My commitment to excellence drives me to stay up-to-date with the latest technologies and industry trends. "
            "I believe that software development is more than just writing code; it's about creating tools that empower users and make a positive impact on the world",
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 18,
              color: Color.fromARGB(255, 143, 143, 143),
            ),
          ),
    
        ],
      ),
    
    );
  }
}