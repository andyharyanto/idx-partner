import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:idx_test_andy/routename.dart';
import 'package:idx_test_andy/router.dart';


void main() {
  runZonedGuarded(() async {
    runApp(
      const IdxTestApp(),
    );
  }, (error, stack) {
    debugPrint(stack.toString());
  });
}

class IdxTestApp extends StatelessWidget {
  const IdxTestApp({super.key});

  @override
  Widget build(BuildContext context) {
    return KeyedSubtree(
      key: key,
      child: MaterialApp(
        // navigatorKey: locator<NavigationService>().navigationKey,
        debugShowCheckedModeBanner: false,
        title: "Idx Test",
        theme: ThemeData(
          primaryColor: Colors.white,
          primarySwatch: Colors.blue,
          scaffoldBackgroundColor: Colors.white,
          appBarTheme: const AppBarTheme(
            systemOverlayStyle: SystemUiOverlayStyle.light,
          ),
          pageTransitionsTheme: const PageTransitionsTheme(builders: {
            TargetPlatform.android: CupertinoPageTransitionsBuilder(),
            TargetPlatform.iOS: CupertinoPageTransitionsBuilder()
          }),
        ),
        initialRoute: homeScreenRoute,
        onGenerateRoute: generateRoute,
      ),
    );
  }
}