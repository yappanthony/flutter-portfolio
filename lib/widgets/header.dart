import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    bool isDesktop(BuildContext context) => 
      MediaQuery.sizeOf(context).width >= 1000;

    bool isMobile(BuildContext context) =>
      MediaQuery.sizeOf(context).width < 1000;

    double screenPadding(BuildContext context) =>
      MediaQuery.sizeOf(context).width * 0.1;

    return Container(
      padding: isMobile(context) 
        ? const EdgeInsets.fromLTRB(15, 20, 15, 20) 
        : EdgeInsets.fromLTRB(screenPadding(context), 20, screenPadding(context), 20),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Colors.grey.withOpacity(0.2),
            width: 1.5
          ),
        ),
        color: Colors.white,
      ),
      height: 75,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Row(
            children: [
              Text(
                "Anthony ",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 34, 34, 34),
                ),
              ),
              Text(
                "Yap",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  // fontFamily: FontFam,
                  color: Color.fromARGB(255, 112, 112, 112),
                ),
              )
            ],
          ),

          if (isDesktop(context))
            Row(
              children: [
                TextButton(
                  onPressed: () {},
                  child: ShaderMask(
                    blendMode: BlendMode.srcIn,
                    shaderCallback: (bounds) => const LinearGradient(colors:[Colors.purple, Colors.orange]).createShader(
                      Rect.fromLTWH(0, 0, bounds.width, bounds.height),
                    ),
                    child: const Text(
                      'Home',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 15,),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'About',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black
                    ),
                  ),
                ),
                const SizedBox(width: 15,),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Works',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black
                    ),
                  ),
                ),
                const SizedBox(width: 15,),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Services',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black
                    ),
                  ),
                ),
                const SizedBox(width: 15,),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Contact',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black
                    ),
                  ),
                ),
              ],
            ),


          OutlinedButton(
            style: OutlinedButton.styleFrom(
              padding: const EdgeInsets.only(left: 15, right: 15,),
              
            ),
            onPressed: () {}, 
            child: const Row(
              children: [
                Text(
                  "Let's Talk ",
                  style: TextStyle(
                    color: Color.fromARGB(255, 34, 34, 34),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Icon(
                  Icons.arrow_forward,
                  size: 16,
                  color: Color.fromARGB(255, 34, 34, 34),
                )
              ],
            )
          )
        ],
      )
    );
  }
}