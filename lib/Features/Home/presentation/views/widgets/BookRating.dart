import 'package:booklapp/Core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon (FontAwesomeIcons.solidStar, size: 15, color: Colors.yellow.shade700),
        const SizedBox(width: 6.3),
        Text("4.8", style: Style.textStyle16.copyWith(color: Colors.white)), 
        const SizedBox(width: 5),

        Text("(245)", style: Style.textStyle14.copyWith(color :Color(0xff707070))),
      ]
    );
  }
}