import 'package:booklapp/Core/utils/styles.dart';
import 'package:booklapp/Features/Home/presentation/views/widgets/SimilarBooksListView.dart';
import 'package:flutter/material.dart';

class SimilarBooksAction extends StatelessWidget {
  const SimilarBooksAction({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'You can Also Like',
          style: Style.textStyle14.copyWith(
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
        const SizedBox(height: 16),

        SimilarBooksItem(),
      ],
    );
  }
}
