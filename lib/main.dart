import 'package:flutter/material.dart';

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
        // home: Scaffold(
        //
        // ),
        routes: {
         '/' :(context) => Clock(),
    },
    );
  }
}
