import 'package:flutter/material.dart';
import 'screens/splash_screen.dart';

void main() {
  runApp(const LionFlowersApp());
}

class LionFlowersApp extends StatelessWidget {
  const LionFlowersApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      title: "Lion Flowers",

      theme: ThemeData(colorScheme: ColorScheme.fromSeed(seedColor: Colors.pink,),
      useMaterial3: true,),

      home: const SplashScreen(),
    );
  }
}