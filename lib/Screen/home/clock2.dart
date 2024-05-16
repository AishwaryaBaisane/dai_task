import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';

import '../../utils/global.dart';

class Clock extends StatefulWidget {
  const Clock({super.key});

  @override
  State<Clock> createState() => _ClockState();
}

class _ClockState extends State<Clock> {
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
              image: AssetImage('assets/img/moon.jpg'), fit: BoxFit.fill),
        ),
        child: Center(
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 0, bottom: 400),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '${days[dateTime.weekday - 1]}  ${dateTime.day} ${month[dateTime.month - 1]}',
                      style: const TextStyle(
                          color: Colors.white,
                          fontSize: 35,
                          fontWeight: FontWeight.bold),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 90),
                      child: Row(
                        children: [
                          Center(
                            child: Text(
                              ' ${(dateTime.hour > 9 && dateTime.hour < 24) ? (dateTime.hour % 12) : '0${(dateTime.hour)}'} : ${(dateTime.minute > 9) ? (dateTime.minute) : '0${(dateTime.minute)}'} : ${(dateTime.second > 9) ? (dateTime.second) : '0${(dateTime.second)}'}',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 40),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10, left: 5),
                            child: Text(
                              (dateTime.hour > 12) ? 'PM' : 'AM',
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Center(
                child: Container(
                  height: 250,
                  width: 250,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.white, width: 3),
                      borderRadius: BorderRadius.circular(400)),
                ),
              ),
              Center(
                child: Transform.rotate(
                  angle: (dateTime.second * 6 * pi) / 180,
                  child: VerticalDivider(
                    thickness: 3,
                    color: Colors.white,
                    endIndent: 410,
                    indent: 310,
                  ),
                ),
              ),
              Center(
                child: Transform.rotate(
                  angle: (dateTime.minute * 6 * pi) / 180,
                  child: VerticalDivider(
                    thickness: 4,
                    color: Colors.white,
                    endIndent: 410,
                    indent: 325,
                  ),
                ),
              ),
              Center(
                child: Transform.rotate(
                  angle:
                      (dateTime.hour + (dateTime.minute / 60)) * 30 * pi / 180,
                  child: VerticalDivider(
                    thickness: 6,
                    color: Colors.white,
                    endIndent: 410,
                    indent: 350,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

DateTime dateTime = DateTime.now();
// DateTime dateTime = DateTime.now();
