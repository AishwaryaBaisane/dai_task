import 'dart:async';
import 'package:flutter/material.dart';

import '../../../utils/global.dart';

class StrapWatch extends StatefulWidget {
  const StrapWatch({super.key});

  @override
  State<StrapWatch> createState() => _StrapWatchState();
}

class _StrapWatchState extends State<StrapWatch> {
  @override
  Widget build(BuildContext context) {
    Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        dateTime = DateTime.now();
      });
    });
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black,
        title: Text(
          '- StrapWatch -',
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
          ),
        ),
      ),
      body: Container(
        height: double.infinity,
        width: 500,
        decoration: BoxDecoration(
          color: Colors.black,
        ),
        child: Stack(
          children: [
            Center(
              child: Container(
                margin: const EdgeInsets.only(),
                height: 300,
                width: 300,
                child: CircularProgressIndicator(
                  value: dateTime.second / 60,
                  color: Colors.orange,
                  // backgroundColor: Colors.white,
                  strokeWidth: 5,
                ),
              ),
            ),
            Center(
              child: Container(
                // margin: const EdgeInsets.only(top: 10, right: 10),
                height: 290,
                width: 290,
                child: CircularProgressIndicator(
                  value: dateTime.minute / 60,
                  color: Colors.white,
                  strokeWidth: 6,
                ),
              ),
            ),
            Center(
              child: Container(
                // margin: const EdgeInsets.only(),
                height: 280,
                width: 280,
                child: CircularProgressIndicator(
                  value: dateTime.hour / 60,
                  color: Colors.green,
                  // backgroundColor: Colors.white,
                  strokeWidth: 5,
                ),
              ),
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '${days[dateTime.weekday - 1]} ',
                    style: const TextStyle(
                        color: Colors.orange,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 100),
                    child: Row(
                      children: [
                        Center(
                          child: Text(
                            '${(dateTime.hour > 12) ? ((dateTime.hour % 12) > 9) ? dateTime.hour % 12 : ('0${dateTime.hour % 12}') : dateTime.hour} : '
                            '${(dateTime.minute > 9) ? dateTime.minute : ('0${dateTime.minute}')} : ${(dateTime.second > 9) ? (dateTime.second) : '0${(dateTime.second)}'}',
                            style: TextStyle(color: Colors.white, fontSize: 35),
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
                  ),
                  Text(
                    '${dateTime.day} ${month[dateTime.month - 1]}',
                    style: const TextStyle(
                        color: Colors.green,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 600, left: 130),
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    Navigator.of(context).pushNamed('/Digital');
                  });
                },
                child: Container(
                  height: 60,
                  width: 150,
                  decoration: BoxDecoration(
                    color: Colors.black38,
                    border: Border.all(color: Colors.white, width: 2),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: const Center(
                      child: Text(
                    'Next',
                    style: TextStyle(
                        color: Colors.blueAccent,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  )),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

DateTime dateTime = DateTime.now();
