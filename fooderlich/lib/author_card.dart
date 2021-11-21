import 'package:flutter/material.dart';

import 'theme.dart';
import 'circle_image.dart';

class AuthorCard extends StatelessWidget {
  final String authorName;
  final String title;
  final ImageProvider? imageProvider;

  const AuthorCard({
    Key? key,
    required this.authorName,
    required this.title,
    this.imageProvider,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // texts will always be in light theme
    final textTheme = FooderlichTheme.light().textTheme;

    return Container(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              CircleImage(
                imageProvider: imageProvider,
                imageRadius: 28.0,
              ),
              const SizedBox(width: 8.0),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(authorName, style: textTheme.headline2),
                  Text(title, style: textTheme.headline3),
                ],
              )
            ],
          ),
          IconButton(
            icon: const Icon(Icons.favorite_border_rounded),
            iconSize: 30,
            color: Colors.grey[400],
            onPressed: () {
              const snackBar = SnackBar(content: Text('Favorite pressed'));
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            },
          ),
        ],
      ),
    );
  }
}
