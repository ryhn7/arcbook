import 'dart:math';

import 'package:arckbook/theme/colors.dart';
import 'package:arckbook/theme/style.dart';
import 'package:flutter/material.dart';

class RandomProgressBar extends StatelessWidget {
  const RandomProgressBar({super.key});

  @override
  Widget build(BuildContext context) {
    final random = Random();
    int totalPages = random.nextInt(401) + 300;
    int progressPercentage = random.nextInt(100) + 1;

    // Calculate current page based on percentage
    int currentPage = (totalPages * (progressPercentage / 100)).round();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Display text with current page and total pages
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Pages $currentPage/$totalPages',
              style: getPoppinsRegularStyle10(color: oldSilver),
            ),
            Text(
              '$progressPercentage%',
              style: getPoppinsRegularStyle10(color: oldSilver),
            ),
          ],
        ),
        const SizedBox(height: 4),
        // Progress bar
        SizedBox(
          width: MediaQuery.of(context).size.width,
          child: LinearProgressIndicator(
            value: progressPercentage / 100,
            backgroundColor: cultured,
            valueColor: const AlwaysStoppedAnimation<Color>(seaGreen),
          ),
        ),
      ],
    );
  }
}
