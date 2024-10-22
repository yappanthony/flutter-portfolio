import 'package:flutter/material.dart';
import './widgets/header.dart';
import './desktop/landing.dart';
import './desktop/software_dev_with_passion.dart';
import './mobile/mobile_view.dart';


void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    bool isDesktop(BuildContext context) => 
      MediaQuery.sizeOf(context).width >= 1000;

    bool isMobile(BuildContext context) =>
      MediaQuery.sizeOf(context).width < 1000;

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
              if (isMobile(context))
                const MobileView(),
              
              if(isDesktop(context))
                const Landing(),
              
              if(isDesktop(context))
                const SoftwareDevWithPassion(),
            ],
          ),
        )

      ),
    );
  }
}







