  import 'package:booklapp/Core/widgets/CutomButton.dart';
import 'package:flutter/material.dart';
  
class BooksAction extends StatelessWidget {
  const BooksAction({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        children: [
          Expanded(
            child: CustomButton(
              backgroundColor: const Color(0xFFFFFFFF),
              text: '19.99\$',
              textColor: Colors.black,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16),
                bottomLeft: Radius.circular(16),
              ),
            ),
          ),
           Expanded(
            child: CustomButton(
              fontSize: 16,
              backgroundColor: const Color(0xffEF8262),
              text: 'Free Preview',
              textColor: Colors.white,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(16),
                bottomRight: Radius.circular(16),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
