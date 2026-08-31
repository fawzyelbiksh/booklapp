

import 'package:booklapp/Features/Home/presentation/views/widgets/BooksDetailsAction.dart';
import 'package:booklapp/Features/Home/presentation/views/widgets/Custom_Book_Details_AppBar.dart';

import 'package:booklapp/Features/Home/presentation/views/widgets/similarBooksAction.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,

          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children:const  [
                CustomBookDetailsAppBar(),
                 BookDetailsSection(),
                 Expanded(child:  SizedBox(height: 50)),
                 SimilarBooksAction(),
                 SizedBox(height: 40),
              ],
            ),
          ),
        ),
      ],
    );
  }
}



