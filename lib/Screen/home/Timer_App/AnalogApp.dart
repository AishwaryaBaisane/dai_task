import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';

class AnalogApp extends StatefulWidget {
  const AnalogApp({super.key});

  @override
  State<AnalogApp> createState() => _AnalogAppState();
}

class _AnalogAppState extends State<AnalogApp> {
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
          '- Analog Clock -',
          style: TextStyle(color: Colors.white, fontSize: 30),
        ),
        leading: InkWell(
          onTap: () {
            setState(() {
              Navigator.of(context).pop('/Digital');
            });
          },
          child: Icon(
            Icons.arrow_back_ios_new,
            color: Colors.white,
          ),
        ),
      ),
      body: Container(
        height: double.infinity,
        width: 500,
        color: Colors.black,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              height: 300,
              width: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(170),
                border: Border.all(
                  color: Colors.white,
                  width: 5,
                ),
              ),
            ),
            ...List.generate(
              60,
              (index) => Transform.rotate(
                  angle: ((index + 1) * 6 * pi) / 180,
                  child: ((index + 1) % 5 == 0)
                      ? VerticalDivider(
                          color: Colors.white,
                          thickness: 3,
                          endIndent: 500,
                          indent: 224,
                        )
                      : VerticalDivider(
                          color: Colors.blue,
                          thickness: 3,
                          endIndent: 510,
                          indent: 230,
                        )),
            ),
            Center(
              child: Transform.rotate(
                angle: (dateTime.minute * 6 * pi) / 180,
                child: VerticalDivider(
                  width: 6,
                  color: Colors.white,
                  thickness: 5,
                  indent: 280,
                  endIndent: 367,
                ),
              ),
            ),
            Center(
              child: Transform.rotate(
                angle: (dateTime.second * 6 * pi) / 180,
                child: VerticalDivider(
                  width: 2,
                  color: Colors.orange,
                  thickness: 3,
                  indent: 260,
                  endIndent: 367,
                ),
              ),
            ),
            Center(
              child: Transform.rotate(
                angle: (dateTime.hour + (dateTime.minute / 60)) * 30 * pi / 180,
                child: VerticalDivider(
                  width: 10,
                  color: Colors.green,
                  thickness: 6,
                  indent: 295,
                  endIndent: 367,
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
