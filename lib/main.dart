import 'package:flutter/material.dart';
import 'package:htt/views/screens/home_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return HomeScreen();
  }
}

void main(List<String> args) {
  runApp(const MyApp());
}
