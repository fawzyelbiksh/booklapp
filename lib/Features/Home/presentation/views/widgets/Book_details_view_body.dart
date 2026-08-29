import 'package:booklapp/Core/utils/styles.dart';
import 'package:booklapp/Features/Home/presentation/views/widgets/BookRating.dart';
import 'package:booklapp/Features/Home/presentation/views/widgets/BooksAction.dart';
import 'package:booklapp/Features/Home/presentation/views/widgets/Custom_Book_Details_AppBar.dart';
import 'package:booklapp/Features/Home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          CustomBookDetailsAppBar(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * .2),
            child: CustomBookImage(),
          ),
          const SizedBox(height: 35),
          Text(
            'The Jungle Book',
            style: Style.textStyle30.copyWith(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 5),
          Opacity(
            opacity: 0.7,
            child: Text(
              'Rudyard Kipling',
              style: Style.textStyle18.copyWith(
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          const SizedBox(height: 18),
          const BookRating(mainAxisAlignment: MainAxisAlignment.center),
          const SizedBox(height: 37),
          const BooksAction(),
        ],
      ),
    );
  }
}

