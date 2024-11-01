import 'package:arckbook/data/model/book_model.dart';
import 'package:arckbook/theme/colors.dart';
import 'package:arckbook/theme/style.dart';
import 'package:flutter/material.dart';

class PopularBookCard extends StatelessWidget {
  final BookModel bookModel;
  const PopularBookCard(this.bookModel, {super.key});

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(maxWidth: 206),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.asset(bookModel.bookCover, height: 200),
          ),
          const SizedBox(height: 12),
          ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 120),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  bookModel.bookTitle,
                  overflow: TextOverflow.ellipsis,
                  style: getPoppinsMediumStyle16(color: onyx),
                ),
                Text(
                  bookModel.bookAuthor,
                  overflow: TextOverflow.ellipsis,
                  style: getPoppinsMediumStyle12(color: oldSilver),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
