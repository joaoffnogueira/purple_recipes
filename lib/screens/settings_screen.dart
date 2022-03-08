import 'package:flutter/material.dart';
import 'package:purple_recipes/components/main_drawer.dart';

class StettingsScreen extends StatelessWidget {
  const StettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Configurações'),
      ),
      drawer: MainDrawer(),
      body: Center(
        child: Text('Settings'),
      ),
    );
  }
}
