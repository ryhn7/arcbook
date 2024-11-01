import 'package:flutter/material.dart';

import '../../data/model/book_model.dart';
import '../../theme/colors.dart';
import '../../theme/style.dart';

class RecommendedBookCard extends StatelessWidget {
  final BookModel bookModel;
  const RecommendedBookCard(this.bookModel, {super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 80,
          height: 120,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.asset(
              bookModel.bookCover,
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(width: 14),
        Column(
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
            const SizedBox(height: 8),
            Row(
              children: [
                Image.asset('assets/icons/icon_star.png', width: 12),
                const SizedBox(width: 4),
                Text(
                  bookModel.bookRating.toString(),
                  style: getPoppinsSemiBoldStyle12(color: onyx),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
