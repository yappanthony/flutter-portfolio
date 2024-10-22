import 'package:flutter/material.dart';
import './widgets/header.dart';
import './widgets/socials.dart';
import './widgets/greeting_text.dart';
import './desktop/landing.dart';
import './desktop/software_dev_with_passion.dart';


void main() {
  runApp(const MainApp());
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
        iconTheme: const IconThemeData(size: 20),
      ),
      home: Scaffold(
        
        body: SingleChildScrollView(
          child: Column(
            children: [
              const Header(),
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
          
              if(isDesktop(context))
                const Landing(),
                const SoftwareDevWithPassion()
            ],
          ),
        )

      ),
    );
  }
}






