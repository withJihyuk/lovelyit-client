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
          titleTextStyle: const TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
          title:  ListTile(
              contentPadding: const EdgeInsets.symmetric(horizontal: 6),
              title: Text(
                '러블릿',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
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
        body: SingleChildScrollView(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [

          Padding(padding: EdgeInsets.fromLTRB(10, 0, 10, 0),child: Card(
            color: Colors.grey.shade700,
            shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            elevation: 4,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                  ),
                  child: SvgPicture.asset(
                    'images/hamster.svg',
                    height: 200,
                    width: MediaQuery.of(context).size.width,
                    fit: BoxFit.fill,
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(10),
                          bottomLeft: Radius.circular(10))),
                  child: ListTile(
                        title:  Text(
                          "연애가 지겹게 느껴질땐 \n'이것'을 해야 한다!",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color:Colors.black54),
                        ),
                        subtitle: const Text(
                          ' - 사랑하는 연인과 더 오래가는 비결?',
                          style: TextStyle(color: Colors.black45),
                        ),
                      ),
                  padding: const EdgeInsets.all(6),
                ),
              ],
            ),
          )),
        ]))
  
      );
  }
}
