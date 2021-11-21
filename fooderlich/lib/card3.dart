import 'package:flutter/material.dart';

import 'card_base.dart';
import 'theme.dart';

class Card3 extends CardBase {
  const Card3({
    Key? key,
  }) : super(
          key: key,
          decorationImage: 'assets/mag2.png',
          padding: const EdgeInsets.all(0),
        );

  Widget _buildDarkOverlay() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(0.6),
        borderRadius: const BorderRadius.all(Radius.circular(10.0)),
      ),
    );
  }

  Widget _buildChips(TextTheme textTheme) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      child: Wrap(
        alignment: WrapAlignment.start,
        spacing: 12,
        children: [
          Chip(
            label: Text('Healthy', style: textTheme.bodyText1),
            backgroundColor: Colors.black.withOpacity(0.7),
          ),
          Chip(
            label: Text('Vegan', style: textTheme.bodyText1),
            backgroundColor: Colors.black.withOpacity(0.7),
          ),
          Chip(
            label: Text('Carrots', style: textTheme.bodyText1),
            backgroundColor: Colors.black.withOpacity(0.7),
          ),
          Chip(
            label: Text('Greens', style: textTheme.bodyText1),
            backgroundColor: Colors.black.withOpacity(0.7),
          ),
        ],
      ),
    );
  }

  @override
  Widget buildContent(BuildContext context) {
    // text will always have dark theme
    final textTheme = FooderlichTheme.dark().textTheme;

    return Stack(
      children: [
        _buildDarkOverlay(),
        Container(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Icon(
                Icons.book,
                color: Colors.white,
                size: 40,
              ),
              const SizedBox(height: 8),
              Text(
                'Recipe Trends',
                style: textTheme.headline2,
              ),
              const SizedBox(height: 30),
            ],
          ),
        ),
        Center(
          child: _buildChips(textTheme),
        ),
      ],
    );
  }
}
