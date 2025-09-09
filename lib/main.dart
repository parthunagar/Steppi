
import 'package:steppi/theme/style.dart';

import 'core/locator.dart';
import 'package:flutter/material.dart';
import 'core/route/router.gr.dart';
void main() {
      setupLocator();
      runApp(const MyApp());
}
class MyApp extends StatelessWidget {
      const MyApp({Key? key}) : super(key: key);
      @override
      Widget build(BuildContext context) {
        return MaterialApp.router(
          debugShowCheckedModeBanner: false,
          routeInformationParser: AppRouter().defaultRouteParser(),
          routerDelegate: AppRouter().delegate(),
          routeInformationProvider: AppRouter().routeInfoProvider(),
          theme: AppStyle.lightTheme,
          darkTheme: AppStyle.lightTheme,
          themeMode: ThemeMode.light,
        );
      }
    }