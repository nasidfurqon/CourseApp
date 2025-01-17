import "package:flutter/material.dart";

class SignButton extends StatelessWidget {
  const SignButton({super.key, required this.textButton});

  final String? textButton;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40)
        )
      ),
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Text(textButton!,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.blue,
            fontSize: 20,
            fontWeight: FontWeight.bold
          ),
        ),
      ),
    );
  }
}


