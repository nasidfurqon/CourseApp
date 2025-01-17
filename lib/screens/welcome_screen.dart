import 'package:courseapp/widgets/customScaffold.dart';
import 'package:flutter/material.dart';
class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Customscaffold(
      child: Text('Welcom'),
    );
  }
}
