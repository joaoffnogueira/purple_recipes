import 'package:flutter/material.dart';
import 'package:purple_recipes/components/main_drawer.dart';
import 'package:purple_recipes/screens/categories_screen.dart';
import 'package:purple_recipes/screens/favorite_screen.dart';

class TabScreen extends StatefulWidget {
  const TabScreen({Key? key}) : super(key: key);

  @override
  State<TabScreen> createState() => _TabScreenState();
}

class _TabScreenState extends State<TabScreen> {
  int _selectedScreenIndex = 0;

  final List<Widget> _screens = [
    CategoriesScreen(),
    FavoriteScreen(),
  ];

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
      drawer: MainDrawer(),
      body: _screens[_selectedScreenIndex],
      bottomNavigationBar: BottomNavigationBar(
          onTap: _selectScreen,
          backgroundColor: const ColorScheme.light().primary,
          unselectedItemColor: Colors.white,
          selectedItemColor: ColorScheme.light().secondary,
          currentIndex: _selectedScreenIndex,
          type: BottomNavigationBarType.shifting,
          items: [
            BottomNavigationBarItem(
              backgroundColor: const ColorScheme.light().primary,
              icon: Icon(Icons.category),
              label: 'Categorias',
            ),
            BottomNavigationBarItem(
              backgroundColor: const ColorScheme.light().primary,
              icon: Icon(Icons.star),
              label: 'Categorias',
            ),
          ]),
    );
  }
}
