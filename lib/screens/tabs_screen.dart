import 'package:flutter/material.dart';
import 'package:purple_recipes/components/main_drawer.dart';
import 'package:purple_recipes/models/meal.dart';
import 'package:purple_recipes/screens/categories_screen.dart';
import 'package:purple_recipes/screens/favorite_screen.dart';

class TabScreen extends StatefulWidget {
  final List<Meal> favoriteMeals;

  const TabScreen({
    required this.favoriteMeals,
    Key? key,
  }) : super(key: key);

  @override
  State<TabScreen> createState() => _TabScreenState();
}

class _TabScreenState extends State<TabScreen> {
  int _selectedScreenIndex = 0;

  late List<Widget> _screens;

  @override
  void initState() {
    super.initState();
    _screens = [
      const CategoriesScreen(),
      FavoriteScreen(
        favoriteMeals: widget.favoriteMeals,
      ),
    ];
  }

  final List<String> _tabTitles = [
    'Categorias',
    'Favoritos',
  ];

  _selectScreen(int index) {
    setState(() {
      _selectedScreenIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_tabTitles[_selectedScreenIndex]),
      ),
      drawer: const MainDrawer(),
      body: _screens[_selectedScreenIndex],
      bottomNavigationBar: BottomNavigationBar(
          onTap: _selectScreen,
          backgroundColor: const ColorScheme.light().primary,
          unselectedItemColor: Colors.white,
          selectedItemColor: const ColorScheme.light().secondary,
          currentIndex: _selectedScreenIndex,
          type: BottomNavigationBarType.shifting,
          items: [
            BottomNavigationBarItem(
              backgroundColor: const ColorScheme.light().primary,
              icon: const Icon(Icons.category),
              label: 'Categorias',
            ),
            BottomNavigationBarItem(
              backgroundColor: const ColorScheme.light().primary,
              icon: const Icon(Icons.star),
              label: 'Categorias',
            ),
          ]),
    );
  }
}
