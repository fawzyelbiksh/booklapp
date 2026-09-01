import 'package:booklapp/Core/utils/styles.dart';
import 'package:booklapp/Features/Home/presentation/views/widgets/BestSellerListViewItem.dart';
import 'package:booklapp/Features/Search/presentation/Views/widgets/custom_search_textfield.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          CustomSearchTextField(),
          SizedBox(height: 16), 
          Text(
            "Search Result",
            style: Style.textStyle18,
          ),
          SizedBox(height: 16),

          Expanded(child: SearchResultsListView()),
        ],
      ),
    );
  }
}

class SearchResultsListView extends StatelessWidget {
  const SearchResultsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      itemBuilder: (context, index) => const Padding(
        padding: EdgeInsets.symmetric(vertical: 10.0),
        child: BookListViewItem(),
      ),
      itemCount: 10,
    ); 
  }
}
