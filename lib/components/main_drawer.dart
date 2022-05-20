import 'package:flutter/material.dart';
import 'package:purple_recipes/utils/app_routes.dart';

class MainDrawer extends StatelessWidget {
  MainDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(children: [
        Container(
          height: 120,
          width: double.infinity,
          padding: const EdgeInsets.all(20),
          color: Theme.of(context).colorScheme.secondary,
          alignment: Alignment.bottomRight,
          child: Text(
            'Let\'s Cook?',
            style: TextStyle(
              fontWeight: FontWeight.w900,
              fontSize: 30,
              color: Colors.white,
            ),
          ),
        ),
        ListTile(
            leading: Icon(
              Icons.restaurant,
              size: 26,
            ),
            title: Text(
              'Recipes',
              style: TextStyle(
                fontFamily: 'RobotoCondensed',
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            onTap: () =>
                Navigator.of(context).pushReplacementNamed(AppRoutes.HOME)),
        ListTile(
            leading: Icon(
              Icons.settings,
              size: 26,
            ),
            title: Text(
              'Configurations',
              style: TextStyle(
                fontFamily: 'RobotoCondensed',
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            onTap: () =>
                Navigator.of(context).pushReplacementNamed(AppRoutes.SETTINGS)),
      ]),
    );
  }
}
