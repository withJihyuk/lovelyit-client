import 'package:flutter/material.dart';
import 'package:practice/main2.dart';

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
        scaffoldBackgroundColor: Colors.grey.shade900,
        colorScheme: ColorScheme.dark(background: Colors.grey.shade900),
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
  int currentIndex =0;
  final screens = [

    CalendarRoute(),
    WriteDocument(),
    MyHomePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        selectedItemColor: Colors.brown,
        onTap: (index) => setState(() =>currentIndex = index),

        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_month),
            label: '캘린더',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book),
            label: '작성하기',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '홈',
          ),
        ],
      ),

    );
  }
}
