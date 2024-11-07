import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bookly_app/core/utils/styles.dart';

class BookRating extends StatelessWidget {
  const BookRating({
    super.key,
    this.mainAxisAlignment = MainAxisAlignment.start,
  });

  final MainAxisAlignment mainAxisAlignment;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: const [
        Icon(
          FontAwesomeIcons.solidStar,
          size: 16,
          color: Color(
            0xffFFDD4F,
          ),
        ),
        SizedBox(width: 6.3),
        Text(
          '0',
          style: Styles.textStyle16,
        ),
        SizedBox(width: 5),
        Text(
          '(0 reviews)',
          style: Styles.textStyle14,
        ),
      ],
    );
  }
}
