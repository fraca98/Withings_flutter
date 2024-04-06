import 'package:flutter/material.dart';
import 'screens/homepage.dart';

void main() {
  runApp(const MyApp());
} //main

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //This specifies the app entrypoint
      initialRoute: HomePage.route,
      //This maps names to the set of routes within the app
      routes: {
        HomePage.route: (context) => const HomePage(),
      },
    );
  } //build
} //MyApp