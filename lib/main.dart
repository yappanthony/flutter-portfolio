import 'package:flutter/material.dart';
import './widgets/header.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
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
          child: const Column(
            children: [
              Header(),
              SizedBox(height: 20),
              CircleAvatar(
                backgroundImage: AssetImage('../assets/id-pic.png'),
                backgroundColor: Colors.transparent,
                maxRadius: 150,
              ),

              SizedBox(height: 20),

              //Socials
              Padding(
                padding: EdgeInsets.all(15),
                child: Row(
                  children: [
                    FaIcon(FontAwesomeIcons.instagram),
                    SizedBox(width: 20),
                    FaIcon(FontAwesomeIcons.facebook),
                    SizedBox(width: 20),
                    FaIcon(FontAwesomeIcons.twitter),
                    SizedBox(width: 20),
                    FaIcon(FontAwesomeIcons.linkedin),
                  ],
                ),
              ),

              SizedBox(height: 20),

            ],
          ),
        )

      ),
    );
  }
}


