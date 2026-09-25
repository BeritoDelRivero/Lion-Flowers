import 'dart:async';
import 'package:flutter/material.dart';
import 'package:lion_flowers/screens/home_screen.dart';
import 'home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();

    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const HomeScreen(),),
      );
    });
  }
  
  @override
     Widget build(BuildContext context) {
    return Scaffold(
      body: Container(width: double.infinity,decoration: const BoxDecoration(
    gradient: LinearGradient(
        colors: [Color.fromARGB(255, 239, 74, 148), Colors.black],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            const Icon(Icons.local_florist, size: 90,color: Colors.pink,),
            const SizedBox(height: 20),

            const Text("Lion Flowers",style: TextStyle(fontSize: 32,fontWeight: FontWeight.bold,color: Colors.pink,
              ),
            ),

            const SizedBox(height: 10),

            const Text("Florecitas",
            style: TextStyle(fontSize: 16,color: Colors.black54,),
            ),

            const SizedBox(height: 30),
            const CircularProgressIndicator(),
          ],
        ),
      ),
    );
  }
}