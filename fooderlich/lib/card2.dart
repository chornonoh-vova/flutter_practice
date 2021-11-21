import 'package:flutter/material.dart';

import 'theme.dart';
import 'card_base.dart';
import 'author_card.dart';

class Card2 extends CardBase {
  const Card2({
    Key? key,
  }) : super(
          key: key,
          decorationImage: 'assets/mag5.png',
          padding: const EdgeInsets.all(0),
        );

  @override
  Widget buildContent(BuildContext context) {
    // texts will always be displayed in light theme
    final textTheme = FooderlichTheme.light().textTheme;

    return Column(
      children: [
        const AuthorCard(
          authorName: 'Mike Katz',
          title: 'Smoothie Connoisseur',
          imageProvider: AssetImage('assets/author_katz.jpeg'),
        ),
        Expanded(
          child: Stack(
            children: [
              Positioned(
                bottom: 16,
                right: 16,
                child: Text(
                  'Recipe',
                  style: textTheme.headline1,
                ),
              ),
              Positioned(
                bottom: 70,
                left: 16,
                child: RotatedBox(
                  quarterTurns: 3,
                  child: Text(
                    'Smoothies',
                    style: textTheme.headline1,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
