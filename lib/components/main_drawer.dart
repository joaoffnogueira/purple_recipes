import 'package:flutter/material.dart';
import 'package:purple_recipes/utils/app_routes.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({Key? key}) : super(key: key);

  Widget _createItem(IconData icon, String label, Function onTap) {
    return ListTile(
      leading: Icon(
        icon,
        size: 26,
      ),
      title: Text(
        label,
        style: TextStyle(
          fontFamily: 'RobotoCondensed',
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      ),
      onTap: onTap(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(children: [
        Container(
          height: 120,
          width: double.infinity,
          padding: EdgeInsets.all(20),
          color: ColorScheme.light().secondary,
          alignment: Alignment.bottomRight,
          child: Text(
            'Vamos cozinhar?',
            style: TextStyle(
              fontWeight: FontWeight.w900,
              fontSize: 30,
              color: ColorScheme.light().primary,
            ),
          ),
        ),
        _createItem(
          Icons.restaurant,
          'Receitas',
          () {
            Navigator.of(context).pushNamed(AppRoutes.HOME);
          },
        ),
        _createItem(
          Icons.settings,
          'Configurações',
          () {
            Navigator.of(context).pushNamed(AppRoutes.SETTINGS);
          },
        )
      ]),
    );
  }
}
