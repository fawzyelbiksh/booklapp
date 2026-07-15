import 'package:booklapp/Core/utils/styles.dart';
import 'package:booklapp/constant.dart';
import 'package:flutter/material.dart' ;


class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 125,
      child: Row(
        children: [
          AspectRatio(
            aspectRatio: 2.5 / 4,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.red,
                image: const DecorationImage(
                  image: AssetImage('assets/images/test_image.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          const SizedBox(width: 30),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.5,
                child: Text(
                  "Harry Potter\nand the Goblet of Fire ",
                  style: Style.textStyle20.copyWith(fontFamily: kGtSectraFine, ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              const SizedBox(height: 3),
              Text(
                "J.K Rowling",
                style: Style.textStyle14.copyWith(
                  color: Colors.white.withOpacity(0.7),
                ),
              ),
              const SizedBox(height: 3),
              Row(
                children: [
                  Text(
                    "19.99\$",
                    style: Style.textStyle20.copyWith(fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                  const SizedBox(width: 60),
                  Icon(Icons.star, size: 16, color: Colors.yellowAccent),
                  const SizedBox(width: 5),
                  Text(
                    "4.8",
                    style: Style.textStyle18.copyWith(
                      color: Colors.white.withOpacity(0.7),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
