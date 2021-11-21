import 'package:flutter/material.dart';

import 'theme.dart';
import 'home.dart';

void main() {
  runApp(const FooderlichApp());
}

class FooderlichApp extends StatelessWidget {
  const FooderlichApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = FooderlichTheme.dark();

    return MaterialApp(
      title: 'Flutter Demo',
      theme: theme,
      home: const Home(),
    );
  }
}
