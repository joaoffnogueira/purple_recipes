import 'package:flutter/material.dart';
import 'package:purple_recipes/screens/categories_meals_screen.dart';
import 'package:purple_recipes/screens/categories_screen.dart';
import 'package:purple_recipes/screens/meal_detail_screen.dart';
import 'package:purple_recipes/screens/tabs_screen.dart';
import 'package:purple_recipes/utils/app_routes.dart';

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
        fontFamily: 'RaleWay',
        canvasColor: Colors.purple[50],
        textTheme: ThemeData.light().textTheme.copyWith(
              headline6: TextStyle(
                fontSize: 20,
                fontFamily: 'RobotoCondensed',
                fontWeight: FontWeight.bold,
              ),
              button: TextStyle(
                color: Colors.white,
              ),
            ),
      ),
      routes: {
        AppRoutes.HOME: (ctx) => TabScreen(),
        AppRoutes.CATEGORIES_MEALS: (ctx) => CategoriesMealsScreen(),
        AppRoutes.MEAL_DETAIL: (ctx) => MealDetailScreen(),
      },
    );
  }
}
