import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/Home/presentation/views/widgets/best_seller_item.dart';
import 'package:bookly_app/features/search/presentation/views/widgets/search_result_list_view.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 14),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 40,
          ),
          TextField(
            decoration: InputDecoration(
              enabledBorder: buildOutLineBorder(),
              focusedBorder: buildOutLineBorder(),
              hintText: 'Search',
              suffixIcon: Icon(
                FontAwesomeIcons.magnifyingGlass,
                color: Colors.white.withOpacity(.5),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            'Search Result',
            style: Styles.textStyle18,
          ),
          const SizedBox(
            height: 20,
          ),
          const Expanded(child: SearchResultListView()),
        ],
      ),
    );
  }

  OutlineInputBorder buildOutLineBorder() {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(
          color: Colors.white,
        ));
  }
}
