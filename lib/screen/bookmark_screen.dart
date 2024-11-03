import 'package:arckbook/data/model/book_model.dart';
import 'package:arckbook/screen/widget/bookmarked_book_card.dart';
import 'package:flutter/material.dart';

import '../theme/colors.dart';
import '../theme/style.dart';

class BookmarkScreen extends StatelessWidget {
  const BookmarkScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<BookModel> bookmarkedBooks =
        bookModelList.where((book) => book.isFavorite).toList();

    Widget bookmarkSection() {
      if (bookmarkedBooks.isEmpty) {
        return Center(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Text(
              'No bookmarked books yet.',
              style: getPoppinsMediumStyle16(color: oldSilver),
            ),
          ),
        );
      }

      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 24),
            Text(
              'Bookmarked Reads',
              style: getPoppinsSemiBoldStyle24(color: maastrichtBlue),
            ),
            const SizedBox(height: 16),
            Expanded(
              child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: bookmarkedBooks.length,
                  itemBuilder: (context, index) {
                    final BookModel bookModel = bookmarkedBooks[index];
                    return SizedBox(
                      child: Container(
                        margin: const EdgeInsets.only(top: 36.0, bottom: 20.0),
                        child: InkWell(
                          onTap: () {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: const Text(
                                    'Ready to jump back in? Happy reading!'),
                                duration: const Duration(seconds: 3),
                                behavior: SnackBarBehavior.floating,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                action: SnackBarAction(
                                  label: 'Dismiss',
                                  onPressed: () {
                                    ScaffoldMessenger.of(context)
                                        .hideCurrentSnackBar();
                                  },
                                ),
                              ),
                            );
                          },
                          child: BookmarkedBookCard(bookModel),
                        ),
                      ),
                    );
                  }),
            )
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: bookmarkSection(),
            ),
          ],
        ),
      ),
    );
  }
}
