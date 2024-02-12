import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

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
          backgroundColor: Colors.grey.shade200,
          automaticallyImplyLeading: false,
        ),
        body: Column(  crossAxisAlignment: CrossAxisAlignment.center,

            children: [
          Padding(
                  padding: EdgeInsets.fromLTRB(30, 0, 0, 0),
                  child: Text('우리 커플,\n오늘의 추억을 함께 공유 해봐요 :)',
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.black))),
          Padding(
              padding: const EdgeInsets.fromLTRB(
                30,
                50,
                30,
                0,
              ),
              child: Center(child:Column(
                  mainAxisAlignment: MainAxisAlignment.center,

                  children: [
                    Row(children: [
                      Container(
                          width: 160,
                          height: 150,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20.0)),
                          child: Column(children: [
                            Padding(
                                padding: const EdgeInsets.fromLTRB(0, 35, 0, 0),
                                child: SvgPicture.asset(
                                  'images/hamster_happy.svg',
                                  width: 50,
                                  height: 50,
                                )),
                            const Text(
                              '82일차',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25),
                            )
                          ])),
                      const SizedBox(width: 20),
                      Column(children: [
                        Container(
                            width: 170,
                            height: 70,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20.0)),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SvgPicture.asset(
                                    'images/hamm.svg',
                                    width: 40,
                                    height: 40,
                                  ),
                                  const SizedBox(width: 20),
                                  const Text(
                                    '일기',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 25),
                                  )
                                ])),
                        const SizedBox(height: 10),
                        Container(
                            width: 170,
                            height: 70,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20.0)),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SvgPicture.asset(
                                    'images/hamster_fine.svg',
                                    width: 40,
                                    height: 40,
                                  ),
                                  const SizedBox(width: 12),
                                  const Text(
                                    '지도',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 25),
                                  )
                                ]))
                      ])
                    ]),
                    const SizedBox(height: 20),
                    Container(
                        width: 330,
                        height: 160,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20.0)),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Align(
                                  alignment: Alignment.topLeft,
                                  child: Padding(
                                      padding:
                                          EdgeInsets.fromLTRB(22, 14, 20, 20),
                                      child: Text(
                                        '다가오는 기념일',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20),
                                      ))),
                              Align(
                                  alignment: Alignment.topRight,
                                  child: Padding(
                                    padding:
                                        EdgeInsets.fromLTRB(20, 14, 22, 20),
                                    child: Text(
                                      '전체 보기',
                                      style: TextStyle(
                                          color: Colors.grey.shade400),
                                    ),
                                  ))
                            ])),
                    // const SizedBox(height: 20),
                    // Container(
                    //   width: 330,
                    //   height: 90,
                    //   decoration: BoxDecoration(
                    //       color: Colors.white,
                    //       borderRadius: BorderRadius.circular(20.0)),
                    // ),
                  ]))),
        ]));
  }
}
