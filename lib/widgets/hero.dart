import 'package:flutter/material.dart';

class HeroSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: 'mainHero',
      child: Image.asset(
        '../assets/image/hero.jpeg', 
        width: double.infinity,
        height: 200,
        fit: BoxFit.cover,
      ),
    );
  }
}
