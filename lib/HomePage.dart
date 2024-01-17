import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'Calendar.dart';
import 'WriteDocument.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.grey.shade900,
          title:  ListTile(
              contentPadding: const EdgeInsets.symmetric(horizontal: 6),
              title: Text(
                '러블릿',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              trailing: Container(
                height: 35,
                width: 35,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle
                ),
              )),
          automaticallyImplyLeading: false,
        ),
        body: Text('test')
      );
  }
}
