import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(15, 20, 15, 20),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Colors.grey.withOpacity(0.2),
            width: 1.5
          )
        )
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
          OutlinedButton(
            style: OutlinedButton.styleFrom(
              padding: const EdgeInsets.only(left: 10, right: 10,),
              
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