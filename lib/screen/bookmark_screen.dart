import 'package:arckbook/data/model/book_model.dart';
import 'package:arckbook/screen/widget/bookmarked_book_card.dart';
import 'package:flutter/material.dart';

import '../theme/colors.dart';
import '../theme/style.dart';

class BookmarkScreen extends StatelessWidget {
  const BookmarkScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Widget bookmarkSection() {
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
                  itemCount: bookModelList.length,
                  itemBuilder: (context, index) {
                    final BookModel bookModel = bookModelList[index];
                    return SizedBox(
                      child: Container(
                        margin: const EdgeInsets.only(top: 36.0, bottom: 20.0),
                        child: InkWell(
                          onTap: () {},
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
