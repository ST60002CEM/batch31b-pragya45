import 'package:flutter/material.dart';
import 'package:glowandglam/app/routes/app_routes.dart';
import 'package:glowandglam/app/themes/theme_data.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Glow Glam',
      theme: getApplicationTheme(),
      initialRoute: AppRoutes.onboardingRoute,
      routes: AppRoutes.getApplicationRoute(),
    );
  }
}
