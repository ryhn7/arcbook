import 'dart:math';

import 'package:arckbook/data/model/book_model.dart';
import 'package:arckbook/theme/style.dart';
import 'package:flutter/material.dart';

import '../../theme/colors.dart';

class BookmarkedBookCard extends StatelessWidget {
  final BookModel bookModel;
  const BookmarkedBookCard(this.bookModel, {super.key});

  @override
  Widget build(BuildContext context) {
    final random = Random();
    int progressPercentage = random.nextInt(100) + 1;

    int currentPage =
        (bookModel.bookPages * (progressPercentage / 100)).round();

    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: cultured,
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                blurRadius: 10,
                offset: const Offset(0, 4),
              ),
            ],
          ),
          child: Row(
            children: [
              const SizedBox(width: 100),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      bookModel.bookTitle,
                      style: getPoppinsBoldStyle16(color: onyx),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      'By ${bookModel.bookAuthor}',
                      style: getPoppinsRegularStyle14(color: oldSilver),
                    ),
                    const SizedBox(height: 8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Image.asset('assets/icons/icon_star.png',
                                width: 12),
                            const SizedBox(width: 4),
                            Text(
                              bookModel.bookRating.toString(),
                              style: getPoppinsMediumStyle12(color: onyx),
                            ),
                          ],
                        ),
                        Text(
                          '$currentPage of ${bookModel.bookPages.toString()} pages',
                          style: getPoppinsMediumStyle12(color: seaGreen),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        // Book image
        Positioned(
          top: -32,
          left: 16,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.asset(
              bookModel.bookCover,
              width: 80,
              height: 120,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ],
    );
  }
}
