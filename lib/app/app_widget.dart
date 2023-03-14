import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'core/theme/app_custom_theme.dart';

class GodsTimeApp extends StatelessWidget {
  const GodsTimeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Gods Time',
      themeMode: ThemeMode.dark,
      theme: AppCustomTheme.lightTheme,
      darkTheme: AppCustomTheme.darkTheme,
      color: Colors.amberAccent,
      routeInformationParser: Modular.routeInformationParser,
      routerDelegate: Modular.routerDelegate,
    );
  }
}
