import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
        colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.black, background: Colors.grey.shade900),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'mainpage'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey.shade900,
          titleTextStyle: const TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
          title: const Padding(
            padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
            child: Text("러블릿"),
          ),
          automaticallyImplyLeading: false,
        ),
        body: SingleChildScrollView(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [

              IconButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => WriteDocument()));
                },
                iconSize: 100,
                icon: Icon(Icons.arrow_back),
              ),
              IconButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => CalendarRoute()));
                },
                iconSize: 100,
                icon: Icon(Icons.arrow_back),
              ),
              Card(
                color: Colors.grey.shade800,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                elevation: 4,
                child: Column(
                  children: [
                    ClipRRect(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                      ),
                      child: SvgPicture.asset(
                        'images/hamster.svg',
                        height: 250,
                        width: MediaQuery.of(context).size.width,
                        fit: BoxFit.fill,
                      ),
                    ),
                    Padding(
                        padding: EdgeInsets.fromLTRB(5, 0, 0, 10),
                        child: ListTile(
                          title: const Text(
                            "연애가 지겹게 느껴질땐 \n'이것'을 해야 한다!",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          subtitle: const Text(
                            '근데 이거 예시인데 내가 모르네 ㅋㅋ ㅈㅅ;',
                            style: TextStyle(color: Colors.white),
                          ),
                        ))
                  ],
                ),
              ),

            ],
          )
        ));
  }
}
