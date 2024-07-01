// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DateTimeApp(),
    );
  }
}

class DateTimeApp extends StatefulWidget {
  const DateTimeApp({super.key});

  @override
  State<DateTimeApp> createState() => _DateTimeAppState();
}

class _DateTimeAppState extends State<DateTimeApp> {
  // //time
  // String hour = "";
  // String min = "";
  // String sec = "";
  // //days
  // String year = "";
  // String dayNumber = "";
  // String month = "";
  // String dayWeek = "";

  // String studesTime = "";

  // int monthNum = DateTime.now().month;
  // //name month
  // List allMonth = [
  //   "January",
  //   "February",
  //   "March",
  //   "April",
  //   "May",
  //   "June",
  //   "July",
  //   "August",
  //   "September",
  //   "October",
  //   "November",
  //   "December",
  // ];

  String weekday = "";
  String date = "";
  String timeNow = "";
  changeEverySec() {
    Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        weekday = DateFormat.EEEE().format(DateTime.now());
        date = DateFormat.yMMMMd().format(DateTime.now());
        timeNow = DateFormat("hh:mm a").format(DateTime.now());

        // year = DateTime.now().year.toString();
        // dayNumber = DateTime.now().day.toString();
        // month = DateTime.now().month.toString();
        // hour = DateTime.now().hour.toString();
        // min = DateTime.now().minute.toString();
        // sec = DateTime.now().second.toString();
        // dayWeek = DateTime.now().weekday.toString();

        // if (int.parse(hour) > 12) {
        //   studesTime = "PM";
        //   hour = (int.parse(hour) - 12).toString();
        // }else{
        //   studesTime = "AM";
        // }

        // for (var i = 0; i < allMonth.length; i++) {
        //   if (monthNum == (i)) {
        //     month = allMonth[monthNum - 1];
        //   }
        // }

        // switch (dayWeek) {
        //   case "1":
        //     dayWeek = "Monday";
        //     break;

        //   case "2":
        //     dayWeek = "Tuesday";
        //     break;

        //   case "3":
        //     dayWeek = "Wednesday";
        //     break;

        //   case "4":
        //     dayWeek = "Thursday";
        //     break;

        //   case "5":
        //     dayWeek = "Friday";
        //     break;

        //   case "6":
        //     dayWeek = "Sunday";
        //     break;

        //   case "7":
        //     dayWeek = "Saturday";
        //     break;
        // }
      });
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    changeEverySec();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 33, 40, 43),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 60, 65, 63),
        title: Text(
          "Date & Time App",
          style: TextStyle(
            color: Colors.white,
            fontSize: 35,
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Today's Date is $weekday",
              style: TextStyle(fontSize: 27, color: Colors.white),
            ),
            SizedBox(
              height: 22,
            ),
            Text(
              date,
              style: TextStyle(fontSize: 27, color: Colors.white),
            ),
            SizedBox(
              height: 22,
            ),
            Text(
              timeNow,
              style: TextStyle(fontSize: 27, color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
