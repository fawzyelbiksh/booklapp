import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomSearchTextField extends StatelessWidget {
  const CustomSearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintStyle: const TextStyle(color: Colors.white),
        enabledBorder: buildOutLineInputBorder,
        border: buildOutLineInputBorder,
        hintText: 'Search ',
        suffixIcon: Opacity(
          opacity: 0.8,
          child: const Icon(FontAwesomeIcons.magnifyingGlass, size: 22),
        ),
      ),
    );
  }
}

OutlineInputBorder buildOutLineInputBorder = OutlineInputBorder(
  borderRadius: BorderRadius.circular(8.0),
  borderSide: const BorderSide(color: Colors.white),
);
