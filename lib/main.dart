import 'package:flutter/material.dart';
import 'package:rahala/screens/bottom_bar.dart';
import 'package:rahala/uintes/app_style.dart';

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
      theme: ThemeData(primaryColor: primary),
      home: const BottomBarScreen(),
    );
  }
}
