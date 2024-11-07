import 'package:bookly_app/core/utils/widgets/custom_circular_progress.dart';
import 'package:bookly_app/core/utils/widgets/custom_error_view.dart';
import 'package:bookly_app/features/Home/presentation/view_models/similar_books_cubit/similar_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:bookly_app/features/Home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimilarDetailsListView extends StatelessWidget {
  const SimilarDetailsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBooksCubit, SimilarBooksState>(
      builder: (context, state) {
        if (state is SimilarBooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .15,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: state.books.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: CustomBookImage(
                    imageUrl:
                        state.books[index].volumeInfo.imageLinks?.thumbnail ??
                            '',
                  ),
                );
              },
            ),
          );
        } else if (state is SimilarBooksFailure) {
          return CustomErrorView(
            errMessage: state.errMessage,
          );
        } else {
          return const CustomProgressIndecator();
        }
      },
    );
  }
}
