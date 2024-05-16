import 'dart:async';

import 'package:flutter/material.dart';

import '../../../utils/global.dart';

class DigitalApp extends StatefulWidget {
  const DigitalApp({super.key});

  @override
  State<DigitalApp> createState() => _DigitalAppState();
}

class _DigitalAppState extends State<DigitalApp> {
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
          '- Digital Clock -',
          style: TextStyle(color: Colors.white, fontSize: 30),
        ),leading: InkWell(onTap: () {
          setState(() {
            Navigator.of(context).pop('/');
          });
        },child: Icon(Icons.arrow_back_ios_new,color: Colors.white,)),
      ),
      body: Container(
        height: double.infinity,
        width: 500,
        color: Colors.black,
        child: Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Container(
                      height: 300,
                      width: 300,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(150),
                        border: Border.all(
                          color: Colors.white,
                          width: 3,
                        ),
                      ),
                      child: Center(
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
                              padding: const EdgeInsets.only(left: 40),
                              child: Row(
                                children: [
                                  Center(
                                    child: Text(
                                      '${(dateTime.hour > 12) ? ((dateTime.hour % 12) > 9) ? dateTime.hour % 12 : ('0${dateTime.hour % 12}') : dateTime.hour} : '
                                      '${(dateTime.minute > 9) ? dateTime.minute : ('0${dateTime.minute}')} : ${(dateTime.second > 9) ? (dateTime.second) : '0${(dateTime.second)}'}',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 35),
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.only(top: 10, left: 0),
                                    child: Text(
                                      (dateTime.hour > 12) ? ' PM' : ' AM',
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
                      )),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 600, left: 130),
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    Navigator.of(context).pushNamed('/analog');
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
                    ),
                  ),
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
