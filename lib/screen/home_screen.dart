import 'package:arckbook/data/model/book_model.dart';
import 'package:arckbook/screen/widget/popular_book_card.dart';
import 'package:arckbook/screen/widget/random_progress_bar.dart';
import 'package:arckbook/screen/widget/recommended_book_card.dart';
import 'package:arckbook/theme/style.dart';
import 'package:flutter/material.dart';

import '../theme/colors.dart';
import 'detail_screen.dart';

class HomeScreen extends StatefulWidget {
  final BookModel? recentBook;
  final Function(BookModel) updateRecentBook;

  const HomeScreen({super.key, required this.updateRecentBook, this.recentBook});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  Widget recentBookSection() {
    if (widget.recentBook == null) {
      return const SizedBox.shrink();
    }

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 24),
          Text(
            'Recent Books',
            style: getPoppinsSemiBoldStyle18(color: onyx),
          ),
          const SizedBox(height: 16),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: 80,
                height: 120,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset(
                    widget.recentBook!.bookCover,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(width: 14),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.recentBook!.bookTitle,
                      style: getPoppinsMediumStyle16(color: onyx),
                    ),
                    Text(
                      widget.recentBook!.bookAuthor,
                      style: getPoppinsMediumStyle12(color: oldSilver),
                    ),
                    const SizedBox(height: 52),
                    RandomProgressBar(
                      totalPages: widget.recentBook!.bookPages,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget popularBookSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 24),
        Padding(
          padding: const EdgeInsets.only(left: 24),
          child: Text(
            'Popular Books',
            style: getPoppinsSemiBoldStyle18(color: onyx),
          ),
        ),
        const SizedBox(height: 16),
        // PopularBookCard()
        SizedBox(
          height: 260,
          child: ListView.builder(
            padding: const EdgeInsets.only(left: 0),
            scrollDirection: Axis.horizontal,
            itemCount: bookModelList.length,
            itemBuilder: (context, index) {
              final BookModel bookModel = bookModelList[index];
              final bool isLastItem = index == bookModelList.length - 1;
              return SizedBox(
                child: Container(
                  margin: EdgeInsets.only(
                      left: index == 0 ? 24 : 0, right: isLastItem ? 20 : 16),
                  child: InkWell(
                    onTap: () async {
                      final viewedBook = await Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetailScreen(
                            bookModel,
                            onViewed: widget.updateRecentBook,
                          ),
                        ),
                      );
                      if (viewedBook != null) {
                        widget.updateRecentBook(viewedBook);
                      }
                    },
                    child: PopularBookCard(bookModel),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }

  Widget recommendedBookSection() {
    final List<BookModel> recommendedBooks =
        bookModelList.where((book) => book.bookRating > 4).toList();
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 24),
          Text(
            'Recommended Books',
            style: getPoppinsSemiBoldStyle18(color: onyx),
          ),
          const SizedBox(height: 16),
          SizedBox(
            height: 500,
            child: ListView.builder(
              padding: const EdgeInsets.only(left: 0),
              scrollDirection: Axis.vertical,
              itemCount: recommendedBooks.length,
              itemBuilder: (context, index) {
                final BookModel bookModel = recommendedBooks[index];
                return SizedBox(
                  child: Container(
                    margin: const EdgeInsets.only(bottom: 16),
                    child: InkWell(
                      onTap: () async {
                        final viewedBook = await Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetailScreen(
                              bookModel,
                              onViewed: widget.updateRecentBook,
                            ),
                          ),
                        );
                        if (viewedBook != null) {
                          widget.updateRecentBook(viewedBook);
                        }
                      },
                      child: RecommendedBookCard(bookModel),
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          'ArcBook',
          style: getPoppinsBoldStyle24(fontSize: 24, color: Colors.black),
        ),
      ),
      body: Column(
        children: [
          const SizedBox(height: 8),
          Container(
            height: 1.0,
            color: Colors.grey[300], // Color of the divider
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  recentBookSection(),
                  popularBookSection(),
                  recommendedBookSection(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
