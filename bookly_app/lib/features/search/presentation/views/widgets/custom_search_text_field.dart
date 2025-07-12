import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomSerachTextField extends StatelessWidget {
  const CustomSerachTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16.0, bottom: 16.0),
      child: TextField(
        decoration: InputDecoration(
            enabledBorder: buildOutlinedInputBorder(),
            focusedBorder: buildOutlinedInputBorder(),
            hintText: 'Search',
            suffixIcon: IconButton(
              onPressed: () {},
              icon: Opacity(
                opacity: 0.8,
                child: Icon(
                  FontAwesomeIcons.magnifyingGlass,
                  size: 28,
                ),
              ),
            )),
      ),
    );
  }

  OutlineInputBorder buildOutlinedInputBorder() {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(color: Colors.white));
  }
}
