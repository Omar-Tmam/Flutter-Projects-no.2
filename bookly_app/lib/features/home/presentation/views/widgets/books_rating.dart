import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRating extends StatelessWidget {
  const BookRating(
      {super.key, this.mainAxisAlignment = MainAxisAlignment.start});
  final MainAxisAlignment mainAxisAlignment;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        Icon(
          FontAwesomeIcons.solidStar,
          color: Colors.amber,
          size: 15,
        ),
        const SizedBox(width: 6),
        Text('4.8', style: Styles.textStyle16.copyWith(color: Colors.white)),
        const SizedBox(width: 9),
        Text('(2398)', style: Styles.textStyle14),
      ],
    );
  }
}
