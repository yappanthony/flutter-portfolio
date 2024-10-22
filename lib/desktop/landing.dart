import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../widgets/socials.dart';
import '../widgets/greeting_text.dart';

final Uri _github = Uri.parse('https://github.com/yappanthony');

Future<void> _launchGithub() async {
  if (!await launchUrl(_github)) {
    throw Exception('Could not launch $_github');
  }
}

class Landing extends StatelessWidget {
  const Landing({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(70.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: 500,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              
              children: [
                const Socials(),
                const GreetingText(headerFontSize:52),
                
                const SizedBox(height: 40),
                
                Row(
                  children: [
                    Container(
                      height: 40,
                      width: 120,
                      alignment: Alignment.center,
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(colors: [Colors.purple, Colors.orange]),
                        borderRadius: BorderRadius.all(Radius.circular(80.0)),
                      ),
                      child: const TextButton(
                        onPressed: _launchGithub,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Say hello",
                              style: TextStyle(
                                color: Color.fromARGB(255, 240, 240, 240),
                        
                              ),
                            ),
                            SizedBox(width:10),
                            Icon(
                              Icons.arrow_forward, 
                              size: 16,
                              color: Color.fromARGB(255, 240, 240, 240),
                            ),
                          ],
                        ),
                      ),
                    ),
                
                    const SizedBox(width: 20),
                
                    SizedBox(
                      height: 40,
                      width: 130,
                      child: OutlinedButton(
                        onPressed: () {}, 
                        child: const Text(
                          "My Portfolio",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 34, 34, 34),
                      
                          ),
                        )
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          
          const CircleAvatar(
            backgroundImage: AssetImage('../assets/id-pic.png'),
            backgroundColor: Colors.transparent,
            maxRadius: 150,
          ),
        ],
      ),
    );
  }
}