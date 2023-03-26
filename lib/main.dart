import 'package:flutter/material.dart';

import 'screen/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Library Management Systems',
      theme: ThemeData(
        primarySwatch: const MaterialColor(
          0XFF56C4D2,
          <int, Color>{
            50: Color(0XFF56C4D2),
            100: Color(0XFF56C4D2),
            200: Color(0XFF56C4D2),
            300: Color(0XFF56C4D2),
            400: Color(0XFF56C4D2),
            500: Color(0XFF56C4D2),
            600: Color(0XFF56C4D2),
            700: Color(0XFF56C4D2),
            800: Color(0XFF56C4D2),
            900: Color(0XFF56C4D2),
          },
        ),
        scaffoldBackgroundColor: Colors.white,
      ),
      home: const Splash(),
    );
  }
}
