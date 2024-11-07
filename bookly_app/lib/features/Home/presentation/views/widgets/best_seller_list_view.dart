import 'package:bookly_app/core/utils/widgets/custom_circular_progress.dart';
import 'package:bookly_app/core/utils/widgets/custom_error_view.dart';
import 'package:bookly_app/features/Home/presentation/view_models/newest_books_cubit/newest_books_cubit.dart';
import 'package:bookly_app/features/Home/presentation/views/widgets/best_seller_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit, NewestBooksState>(
      builder: (context, state) {
        if (state is NewestBooksSuccess) {
          return Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 30,
            ),
            child: ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              padding: EdgeInsets.zero,
              itemCount: state.books.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 6),
                  child: BestSellerItem(
                    bookModel: state.books[index],
                  ),
                );
              },
            ),
          );
        } else if (state is NewestBooksFailure) {
          return CustomErrorView(errMessage: state.errMessage);
        } else {
          return const CustomProgressIndecator();
        }
      },
    );
  }
}
