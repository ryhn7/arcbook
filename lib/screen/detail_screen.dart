import 'package:arckbook/data/model/book_model.dart';
import 'package:arckbook/theme/colors.dart';
import 'package:arckbook/theme/style.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatefulWidget {
  final BookModel bookModel;
  final Function(BookModel) onViewed;

  const DetailScreen(this.bookModel, {super.key, required this.onViewed});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  bool isBookmarked = false;

  @override
  void initState() {
    super.initState();
    widget.onViewed(widget.bookModel);
  }

  Widget bookCoverSection() {
    return Container(
      color: cultured,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 24.0),
        child: Center(
          child: SizedBox(
            height: 252,
            width: 172,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.asset(
                widget.bookModel.bookCover,
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget bookInfoSection() {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.only(top: 16.0),
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Title and Author Row
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(widget.bookModel.bookTitle,
                          maxLines: 2,
                          style: getPoppinsSemiBoldStyle24(color: onyx)),
                      const SizedBox(height: 4),
                      Text(
                        widget.bookModel.bookAuthor,
                        overflow: TextOverflow.ellipsis,
                        style: getPoppinsMediumStyle16(color: oldSilver),
                      ),
                    ],
                  ),
                ),
                Text(
                  'Free',
                  style: getPoppinsSemiBoldStyle20(color: seaGreen),
                )
              ],
            ),
            const SizedBox(height: 16),
            // Rating, Pages, Language Container
            Container(
              padding: const EdgeInsets.symmetric(vertical: 12),
              decoration: BoxDecoration(
                color: cultured,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _buildInfoItem(Icons.star,
                      widget.bookModel.bookRating.toString(), 'Rating',
                      iconColor: Colors.amber),
                  const SizedBox(
                    height: 56,
                    child: VerticalDivider(
                      thickness: 1,
                      color: oldSilver,
                    ),
                  ),
                  _buildInfoItem(Icons.book,
                      widget.bookModel.bookPages.toString(), 'Pages',
                      iconColor: onyx),
                  const SizedBox(
                    height: 56,
                    child: VerticalDivider(
                      thickness: 1,
                      color: oldSilver,
                    ),
                  ),
                  _buildInfoItem(
                      Icons.language, widget.bookModel.bookLanguage, 'Language',
                      iconColor: onyx),
                ],
              ),
            ),
            const SizedBox(height: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Description',
                    style: getPoppinsMediumStyle18(color: onyx),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    widget.bookModel.bookDescription,
                    style: getPoppinsRegularStyle14(color: oldSilver).copyWith(
                      letterSpacing: 0.5,
                      height: 1.8,
                    ),
                  ),
                  const Spacer(),
                  // Bottom Buttons Row
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            isBookmarked = !isBookmarked;
                          });
                        },
                        child: Container(
                          width: 52.0,
                          padding: const EdgeInsets.all(14),
                          decoration: BoxDecoration(
                            color: cultured,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Image.asset(
                            isBookmarked
                                ? 'assets/icons/icon_bookmark_red.png'
                                : 'assets/icons/icon_bookmark_outline.png',
                            width: 24,
                            height: 24,
                          ),
                        ),
                      ),
                      const SizedBox(width: 20),
                      Expanded(
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.symmetric(vertical: 16),
                            backgroundColor: maastrichtBlue,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16),
                            ),
                          ),
                          onPressed: () {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: const Text('Starting to read...'),
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
                          child: Text(
                            'Start Reading',
                            style:
                                getPoppinsSemiBoldStyle16(color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 32),
                ],
              ),
            ),
          ],
        ),
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
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(
          'eBook Details',
          style: getPoppinsSemiBoldStyle18(color: onyx),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          bookCoverSection(),
          bookInfoSection(),
        ],
      ),
    );
  }
}

Widget _buildInfoItem(IconData icon, String value, String label,
    {Color iconColor = Colors.grey}) {
  return Column(
    children: [
      Icon(icon, color: iconColor),
      const SizedBox(height: 4),
      Text(
        value,
        style: getPoppinsSemiBoldStyle14(color: onyx),
      ),
      Text(
        label,
        style: getPoppinsMediumStyle12(color: oldSilver),
      ),
    ],
  );
}
