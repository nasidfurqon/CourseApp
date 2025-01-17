import 'package:flutter/material.dart';

class Customscaffold extends StatelessWidget {
  const Customscaffold({super.key, this.child});
  final Widget? child;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,

        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.white),
      ),
      extendBodyBehindAppBar: true,
      body: Stack(
        children: [
          Image.asset('assets/image/backgroundLanding.png',
          fit: BoxFit.cover,
          width: double.infinity,
          height: double.infinity),
          SafeArea(child: child!)
        ],
      ),
    );
  }
}
