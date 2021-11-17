import 'package:flutter/material.dart';

import 'recipe.dart';

class RecipeWidget extends StatelessWidget {
  final Recipe recipe;

  const RecipeWidget({
    Key? key,
    required this.recipe,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final shape = RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(12.0),
    );

    const textStyle = TextStyle(
      fontSize: 20.0,
      fontWeight: FontWeight.w500,
      fontFamily: 'Roboto',
    );

    const imageRadius = BorderRadius.only(
      topLeft: Radius.circular(8.0),
      topRight: Radius.circular(8.0),
    );

    const textPadding = EdgeInsets.only(top: 16.0);
    const cardPadding = EdgeInsets.only(bottom: 16.0);

    return Card(
      elevation: 2.0,
      shape: shape,
      child: Padding(
        padding: cardPadding,
        child: Column(
          children: [
            ClipRRect(
              borderRadius: imageRadius,
              child: Image.asset(recipe.imageUrl),
            ),
            Padding(
              padding: textPadding,
              child: Text(recipe.label, style: textStyle),
            ),
          ],
        ),
      ),
    );
  }
}
