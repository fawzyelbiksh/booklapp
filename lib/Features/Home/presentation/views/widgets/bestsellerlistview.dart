import 'package:booklapp/Features/Home/presentation/views/widgets/BestSellerListViewItem.dart';
import 'package:flutter/material.dart';

class BestSellerListView  extends StatelessWidget {
  const BestSellerListView ({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        padding: EdgeInsets.zero,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) => const  Padding(
          padding:  EdgeInsets.symmetric(vertical: 10.0),
          child:  BestSellerListViewItem(),
        ),
        itemCount: 10,
      ),
    );
  }
}