import 'package:flutter/material.dart';
import 'package:purple_recipes/components/main_drawer.dart';
import 'package:purple_recipes/models/settings.dart';

class StettingsScreen extends StatefulWidget {
  final Function(Settings) onSettingsChanged;

  final Settings settings;

  const StettingsScreen({
    required this.settings,
    required this.onSettingsChanged,
    Key? key,
  }) : super(key: key);

  @override
  State<StettingsScreen> createState() => _StettingsScreenState();
}

class _StettingsScreenState extends State<StettingsScreen> {
  late Settings settings;
  @override
  void initState() {
    super.initState();
    settings = widget.settings;
  }

  Widget _createSwitch(
    String title,
    String subtitle,
    bool value,
    Function(bool) onChanged,
  ) {
    return SwitchListTile.adaptive(
      title: Text(title),
      subtitle: Text(subtitle),
      value: value,
      onChanged: (value) {
        onChanged(value);
        widget.onSettingsChanged(settings);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Configurations'),
      ),
      drawer: MainDrawer(),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(20),
            child: Text(
              'Configurations',
              style: Theme.of(context).textTheme.headline6,
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                _createSwitch(
                  'Gluten free',
                  'Only displays gluten-free recipes',
                  settings.isGlutenFree,
                  (value) => setState(() => settings.isGlutenFree = value),
                ),
                _createSwitch(
                  'Lactose Free',
                  'Only displays lactose-free recipes',
                  settings.isLactoseFree,
                  (value) => setState(() => settings.isLactoseFree = value),
                ),
                _createSwitch(
                  'Vegan',
                  'Only displays vegan recipes',
                  settings.isVegan,
                  (value) => setState(() => settings.isVegan = value),
                ),
                _createSwitch(
                  'Vegetarian',
                  'Only displays vegetarian recipes',
                  settings.isVegetarian,
                  (value) => setState(() => settings.isVegetarian = value),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
