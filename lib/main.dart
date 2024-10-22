import 'package:flutter/material.dart';
import './widgets/header.dart';
import './widgets/socials.dart';
import './widgets/greeting_text.dart';
import 'package:url_launcher/url_launcher.dart';

final Uri _github = Uri.parse('https://github.com/yappanthony');

void main() {
  runApp(const MainApp());
}

Future<void> _launchGithub() async {
  if (!await launchUrl(_github)) {
    throw Exception('Could not launch $_github');
  }
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    bool isDesktop(BuildContext context) => 
      MediaQuery.sizeOf(context).width > 939;

    bool isMobile(BuildContext context) =>
      MediaQuery.sizeOf(context).width <= 939;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        iconTheme: const IconThemeData(size: 20)
      ),
      home: Scaffold(
        
        body: Container(
          decoration: const BoxDecoration(
            color: Color.fromARGB(255, 250, 249, 233)
          ),
          child: Column(
            children: [
              const Header(),
              const SizedBox(height: 30),
              if(isMobile(context))
                const CircleAvatar(
                  backgroundImage: AssetImage('../assets/id-pic.png'),
                  backgroundColor: Colors.transparent,
                  maxRadius: 150,
                ),

              if(isMobile(context))
                const SizedBox(height: 20),

              if(isMobile(context))
                //Socials
                const Socials(),
              
              if(isMobile(context))
                const Padding(
                  padding: EdgeInsets.only(left: 15, right: 15),
                  child: GreetingText(headerFontSize:36),
                ),

              Padding(
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
                              )
                            ],
                          )
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
              )
            ],
          ),
        )

      ),
    );
  }
}




