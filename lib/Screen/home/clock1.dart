import 'dart:async';

import 'package:flutter/material.dart';

import '../../utils/global.dart';

class ClockApp extends StatefulWidget {
  const ClockApp({super.key});

  @override
  State<ClockApp> createState() => _ClockAppState();
}

class _ClockAppState extends State<ClockApp> {
  @override
  Widget build(BuildContext context) {
    Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        dateTime = DateTime.now();
      });
    });
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: 500,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/img/sun.jpg'), fit: BoxFit.fill)),
        child: Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '${days[dateTime.weekday - 1]}  ${dateTime.day} ${month[dateTime.month - 1]}',
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 35,
                      fontWeight: FontWeight.bold),
                ),
                Center(
                  child: Text(
                    ' ${(dateTime.hour > 9 && dateTime.hour < 24) ? (dateTime.hour % 12) : '0${(dateTime.hour)}'} : ${(dateTime.minute > 9) ? (dateTime.minute) : '0${(dateTime.minute)}'} : ${(dateTime.second > 9) ? (dateTime.second) : '0${(dateTime.second)}'}',
                    style: TextStyle(color: Colors.white, fontSize: 60),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 450),
                  child: Text(
                    (dateTime.hour > 12) ? 'PM' : 'AM',
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

DateTime dateTime = DateTime.now();
late String day;
