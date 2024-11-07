import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomErrorView extends StatelessWidget {
  const CustomErrorView({super.key, required this.errMessage});

  final String errMessage;

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Text(
      errMessage,
      textAlign: TextAlign.center,
      style: Styles.textStyle18,
    ));
  }
}
