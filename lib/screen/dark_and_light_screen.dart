import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/theme_provider.dart';

class DarkAndLightScreen extends StatefulWidget {
  const DarkAndLightScreen({super.key});

  @override
  State<DarkAndLightScreen> createState() => _DarkAndLightScreenState();
}

class _DarkAndLightScreenState extends State<DarkAndLightScreen> {



  @override
  Widget build(BuildContext context) {

    final themeProvider = Provider.of<ThemeProvider>(context);
    
    return Scaffold(
      appBar: AppBar(
        title: Text("Light and Dark"),
      ),
      body: Column(
        children: [
          RadioListTile<ThemeMode>(
            title: Text("Light Mode"),
              value: ThemeMode.light,
              groupValue: themeProvider.themeMode,
              onChanged: themeProvider.setTheme
          ),
          RadioListTile<ThemeMode>(
            title: Text("Dark Mode"),
              value: ThemeMode.dark,
              groupValue: themeProvider.themeMode,
              onChanged: themeProvider.setTheme
          ),
        ],
      ),
    );
  }
}
