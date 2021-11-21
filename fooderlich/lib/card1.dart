import 'package:flutter/material.dart';

import 'card_base.dart';

class Card1 extends CardBase {
  const Card1({Key? key}) : super(key: key, decorationImage: 'assets/mag1.png');

  final String _category = 'Editor\'s choice';
  final String _title = 'The art of dough';
  final String _description = 'Learn to make a perfect bread';
  final String _chef = 'Ray Wenderlich';

  @override
  Widget buildContent(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Stack(
      children: [
        Text(_category, style: textTheme.bodyText1),
        Positioned(
          child: Text(_title, style: textTheme.headline2),
          top: 20,
        ),
        Positioned(
          child: Text(_description, style: textTheme.bodyText1),
          bottom: 30,
          right: 0,
        ),
        Positioned(
          child: Text(_chef, style: textTheme.bodyText1),
          bottom: 10,
          right: 0,
        ),
      ],
    );
  }
}
