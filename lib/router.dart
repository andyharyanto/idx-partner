import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:idx_test_andy/routename.dart';
import 'package:idx_test_andy/view/home_screen.dart';

PageRoute _getPageRoute(
    {required String routeName, required Widget viewToShow}) {
  return MaterialPageRoute(
      settings: RouteSettings(
        name: routeName,
      ),
      builder: (_) => viewToShow);
}


Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case homeScreenRoute:
      return _getPageRoute(
          routeName: settings.name ?? "", viewToShow: const HomeScreen());

    default:
      return MaterialPageRoute(
          builder: (_) => Scaffold(
            body:
            Center(child: Text('No route found for ${settings.name}')),
          ));
  }
}