import 'package:flutter/material.dart';
import 'package:purple_recipes/models/category.dart';

class CategoryItem extends StatelessWidget {
  final Category category;

  const CategoryItem({required this.category, Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(category.title),
    );
  }
}