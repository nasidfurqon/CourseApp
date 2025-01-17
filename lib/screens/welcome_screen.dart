import 'package:flutter/material.dart';
class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      extendBodyBehindAppBar: true  ,
      body: Stack(
        children: [
          Image.asset('assets/image/backgroundLanding.png',
          fit: BoxFit.cover,
          width: double.infinity,
          height: double.infinity,)
        ],
      ),
    );
  }
}
