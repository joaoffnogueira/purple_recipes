import 'package:flutter/material.dart';
import 'package:purple_recipes/screens/categories_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Purple Recipes',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: const CategoriesScreen(),
    );
  }
}
