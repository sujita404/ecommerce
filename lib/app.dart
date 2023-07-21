import 'package:ecomerce/view/screens/splash.dart';
import 'package:flutter/material.dart';

class Ecomerce extends StatelessWidget {
  const Ecomerce({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
