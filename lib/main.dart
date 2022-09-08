import 'package:flutter/material.dart';
import 'package:mono_ui/core/app_theme.dart';
import 'package:mono_ui/core/routes_manager.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp._internal();
  static const MyApp _instance = MyApp._internal();
  factory MyApp() => _instance;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mono App  ',
      debugShowCheckedModeBanner: false,
      theme: appTheme,
      onGenerateRoute: RouteGenerator.getRoute,
      initialRoute: Routes.splashRoute,
    );
  }
}
