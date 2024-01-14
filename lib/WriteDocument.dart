import "package:flutter/material.dart";
import 'package:flutter_svg/flutter_svg.dart';

class WriteDocument extends StatefulWidget {
  const WriteDocument({Key? key}) : super(key: key);

  @override
  State<WriteDocument> createState() => _SecondRouteState();
}

class _SecondRouteState extends State<WriteDocument> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.grey.shade900,
          titleTextStyle: const TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
          centerTitle: true,
          title: const Text("작성"),
          leadingWidth: 55,
          // leading: Padding(padding: EdgeInsets.fromLTRB(10, 0, 0, 0),child: IconButton(
          //   onPressed: () {
          //     Navigator.push(context,
          //         MaterialPageRoute(builder: (context) => MyHomePage(title: 'home' )));
          //   },
          //   icon: SvgPicture.asset('images/back.svg'),
          // ),),
        ),
        body: Center(
            child: Align(
              alignment: Alignment.topLeft,
              child: Stack(children: [
                const Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(25, 20, 0, 0),
                      child: Text(
                        "벼루님, \n오늘의 사랑은 어떠셨나요?",
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    )),
                Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 0, 110),
                      child: SvgPicture.asset(
                        'images/hamster.svg',
                        width: 100,
                        height: 200,
                      ),
                    )),
                Align(
                    alignment: Alignment.bottomCenter,
                    child: Card(
                      color: Colors.grey.shade800,
                      child: Container(
                        height: 200.0,
                        width: double.infinity,

                        child: Column(
                          children: [
                            const Align(
                              alignment: Alignment.topLeft,
                              child: Padding(
                                padding: EdgeInsets.fromLTRB(20, 20, 0, 0),
                                child: Text("기분",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 17.5)),
                              ),
                            ),
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: [
                                  Padding(
                                      padding:
                                      const EdgeInsets.fromLTRB(20, 20, 0, 0),
                                      child: Container(
                                        height: 70,
                                        width: 70,
                                        alignment: Alignment.center,
                                        decoration: BoxDecoration(
                                            color: Colors.grey.shade700,
                                            shape: BoxShape.circle),
                                        child: SvgPicture.asset(
                                            'images/hamster_2.svg',
                                            width: 40,
                                            height: 40),
                                      )),
                                  Padding(
                                      padding:
                                      const EdgeInsets.fromLTRB(20, 20, 0, 0),
                                      child: Container(
                                        height: 70,
                                        width: 70,
                                        alignment: Alignment.center,
                                        decoration: BoxDecoration(
                                            color: Colors.grey.shade700,
                                            shape: BoxShape.circle),
                                        child: SvgPicture.asset(
                                            'images/hamster_3.svg',
                                            width: 40,
                                            height: 40),
                                      )),
                                  Padding(
                                      padding:
                                      const EdgeInsets.fromLTRB(20, 20, 0, 0),
                                      child: Container(
                                        height: 70,
                                        width: 70,
                                        alignment: Alignment.center,
                                        decoration: BoxDecoration(
                                            color: Colors.grey.shade700,
                                            shape: BoxShape.circle),
                                        child: Text('Main'),
                                      )),
                                  Padding(
                                      padding:
                                      const EdgeInsets.fromLTRB(20, 20, 0, 0),
                                      child: Container(
                                        height: 70,
                                        width: 70,
                                        alignment: Alignment.center,
                                        decoration: BoxDecoration(
                                            color: Colors.grey.shade700,
                                            shape: BoxShape.circle),
                                        child: Text('Main'),
                                      ))
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    )),
              ]),
            )));
  }
}
