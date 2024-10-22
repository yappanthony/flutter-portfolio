import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Socials extends StatelessWidget {
  const Socials({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
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
    );
  }
}