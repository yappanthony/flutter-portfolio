import 'package:flutter/material.dart';

class SoftwareDevWithPassion extends StatelessWidget {
  const SoftwareDevWithPassion({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white
      ),
      padding: const EdgeInsets.fromLTRB(70, 50, 70, 50),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Image.asset(
              '../assets/laptop-code.jpg',
              height: 300,
            ),
          ),
    
          const SizedBox(width: 30,),
    
          const Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: [
                Text(
                  "Developing Software with\nPassion",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
                SizedBox(height: 20,),
                Text(
                  "As a dedicated software developer, I approach every project with a deep-rooted passion for crafting innovative and efficient solutions. "
                  "My commitment to excellence drives me to stay up-to-date with the latest technologies and industry trends. "
                  "I believe that software development is more than just writing code; it's about creating tools that empower users and make a positive impact on the world",
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}