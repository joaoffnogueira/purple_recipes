import 'package:flutter/material.dart';
import 'package:purple_recipes/models/meal.dart';
import 'package:purple_recipes/models/settings.dart';
import 'package:purple_recipes/screens/categories_meals_screen.dart';
import 'package:purple_recipes/screens/meal_detail_screen.dart';
import 'package:purple_recipes/screens/settings_screen.dart';
import 'package:purple_recipes/screens/tabs_screen.dart';
import 'package:purple_recipes/utils/app_routes.dart';
import 'data/dummy_data.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final ThemeData tema = ThemeData();

  Settings settings = Settings();
  List<Meal> _avaliableMeals = DUMMY_MEALS;

  void _filterMeals(Settings settings) {
    setState(() {
      this.settings = settings;
      _avaliableMeals = DUMMY_MEALS.where((meal) {
        final filterGluten = settings.isGlutenFree && !meal.isGlutenFree;
        final filterLactose = settings.isLactoseFree && !meal.isLactoseFree;
        final filterVegan = settings.isVegan && !meal.isVegan;
        final filterVegetarian = settings.isVegetarian && !meal.isVegetarian;

        return !filterGluten &&
            !filterLactose &&
            !filterVegan &&
            !filterVegetarian;
      }).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Purple Recipes',
      theme: tema.copyWith(
        colorScheme: tema.colorScheme.copyWith(
          primary: Colors.deepPurple,
          secondary: Colors.deepPurpleAccent,
        ),
        canvasColor: Colors.purple[50],
        textTheme: ThemeData.light().textTheme.copyWith(
              bodyText1: const TextStyle(
                fontFamily: 'RaleWay',
              ),
              bodyText2: const TextStyle(
                fontFamily: 'RaleWay',
              ),
              headline6: const TextStyle(
                fontSize: 20,
                fontFamily: 'RobotoCondensed',
                fontWeight: FontWeight.bold,
              ),
              button: const TextStyle(
                color: Colors.white,
              ),
            ),
      ),
      routes: {
        AppRoutes.HOME: (ctx) => const TabScreen(),
        AppRoutes.CATEGORIES_MEALS: (ctx) => CategoriesMealsScreen(
              meals: _avaliableMeals,
            ),
        AppRoutes.MEAL_DETAIL: (ctx) => const MealDetailScreen(),
        AppRoutes.SETTINGS: (ctx) => StettingsScreen(
              settings: settings,
              onSettingsChanged: _filterMeals,
            ),
      },
    );
  }
}
