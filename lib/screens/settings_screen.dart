import 'package:flutter/material.dart';

class StettingsScreen extends StatelessWidget {
  const StettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Configurações'),
      ),
      body: Center(
        child: Text('Settings'),
      ),
    );
  }
}
