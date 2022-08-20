import 'package:flutter/material.dart';

import 'screens/screens.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Peliculas',
      initialRoute: 'HomeScreen',
      routes: {
        'HomeScreen': (context) => const HomeScreen(),
        'DetailScreen': (context) => const DetailScreen(),
      },
      theme: ThemeData.light().copyWith(
        // Tema del AppBar
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.indigo,
          elevation: 0,
        ),
      ),
    );
  }
}
