import 'package:flutter/material.dart';
import 'package:practice/HomePage.dart';

import 'Calendar.dart';
import 'WriteDocument.dart';

void main() {
  runApp(const MyApp());

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '하루일기',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.grey.shade200,
        colorScheme: ColorScheme.dark(background:  Colors.transparent),
        useMaterial3: false,
      ),
      home: const NavBar(title: 'mainpage'),
    );
  }
}

class NavBar extends StatefulWidget {
  const NavBar({super.key, required this.title});

  final String title;

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {

  int currentIndex = 0;
  final screens = [
    CalendarRoute(),
    MyHomePage(),
    WriteDocument(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: screens[currentIndex]

        );
  }
}
