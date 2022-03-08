import 'package:flutter/material.dart';
import 'package:purple_recipes/screens/categories_screen.dart';
import 'package:purple_recipes/screens/favorite_screen.dart';

class TabScreen extends StatelessWidget {
  const TabScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          appBar: AppBar(
            title: Text('Vamos cozinhar'),
            bottom: TabBar(tabs: [
              Tab(
                icon: Icon(Icons.category),
                text: 'Categorias',
              ),
              Tab(
                icon: Icon(Icons.star),
                text: 'Favoritos',
              ),
            ]),
          ),
          body: TabBarView(
            children: [
              CategoriesScreen(),
              FavoriteScreen(),
            ],
          )),
    );
  }
}
