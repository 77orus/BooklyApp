import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/Home/presentation/views/widgets/similar_book_details_list_view.dart';
import 'package:flutter/material.dart';

class SimilarBookDetailsSection extends StatelessWidget {
  const SimilarBookDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'You can also like',
          style: Styles.textStyle14.copyWith(fontWeight: FontWeight.w900),
        ),
        const SizedBox(
          height: 16,
        ),
        const SimilarDetailsListView(),
        const SizedBox(
          height: 40,
        ),
      ],
    );
  }
}
