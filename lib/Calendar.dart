import "package:flutter/material.dart";
import 'package:practice/main.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CalendarRoute extends StatefulWidget {
  const CalendarRoute({super.key});

  @override
  State<CalendarRoute> createState() => _CalendarRouteState();
}

class _CalendarRouteState extends State<CalendarRoute> {
  late DateFormat dateFormat;
  late DateFormat timeFormat;

  @override
  void initState() {
    super.initState();
    initializeDateFormatting();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,


          backgroundColor: Colors.grey.shade900,
          titleTextStyle: const TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
          centerTitle: true,
          title: const Text("캘린더"),
          leadingWidth: 55,
          // leading: Padding(
          //   padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
          //   child: IconButton(
          //     onPressed: () {
          //       Navigator.push(context,
          //           MaterialPageRoute(builder: (context) => MyHomePage(title: 'home')));
          //     },
          //     icon: SvgPicture.asset('images/back.svg'),
          //   ),
          // ),
        ),
        body: Column(
          children: [
            TableCalendar(
                locale: 'ko_KR',
                daysOfWeekHeight:30,
                headerVisible: false,
                firstDay: DateTime.utc(2021, 10, 16),
                lastDay: DateTime.utc(2030, 3, 14),
                focusedDay: DateTime.utc(2021, 12, 24),
                calendarStyle: const CalendarStyle(
                  defaultTextStyle: TextStyle(color: Colors.white),
                  weekNumberTextStyle: TextStyle(color: Colors.red),
                  weekendTextStyle: TextStyle(color: Colors.brown),
                )),

          ],
        ));
  }
}
