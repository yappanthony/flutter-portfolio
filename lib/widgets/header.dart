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
            const Row(
              children: [
                Text(
                  'Home',
                  style: TextStyle(
                    fontWeight: FontWeight.bold
                  ),
                ),
                SizedBox(width: 15,),
                Text(
                  'About',
                  style: TextStyle(
                    fontWeight: FontWeight.bold
                  ),
                ),
                SizedBox(width: 15,),
                Text(
                  'Works',
                  style: TextStyle(
                    fontWeight: FontWeight.bold
                  ),
                ),
                SizedBox(width: 15,),
                Text(
                  'Services',
                  style: TextStyle(
                    fontWeight: FontWeight.bold
                  ),
                ),
                SizedBox(width: 15,),
                Text(
                  'Contact',
                  style: TextStyle(
                    fontWeight: FontWeight.bold
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
                    color: Color.fromARGB(255, 34, 34, 34)
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