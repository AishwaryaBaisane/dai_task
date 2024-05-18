import 'package:flutter/material.dart';
import 'Screen/home/Buttons.dart';
import 'Screen/home/Timer_App/AnalogApp.dart';
import 'Screen/home/Timer_App/Degital_Clock.dart';
import 'Screen/home/Timer_App/StrapWatch.dart';
import 'Screen/home/clock1.dart';
import 'Screen/home/clock2.dart';

void main()
{
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        routes: {
         '/' :(context) => ButtonApp(),
         '/Digital' :(context) => DigitalApp(),
         '/analog' :(context) => AnalogApp(),
         '/strap' :(context) => StrapWatch(),
         '/digital' :(context) => ClockApp(),
         '/Analog' :(context) => Clock(),
    },
    );
  }
}
