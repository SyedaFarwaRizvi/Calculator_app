import 'package:flutter/material.dart';
import 'package:calculator_app/Calculator_app.dart';

class MYButton extends StatelessWidget {
  final String title;
  final Color color;
  final VoidCallback onPress;
  const MYButton(
      {super.key,
      required this.title,
      this.color = const Color(0xffa5a5a5),
      required this.onPress});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
        child: InkWell(
          onTap: onPress,
          child: Container(
            height: 80.0,
            decoration: BoxDecoration(shape: BoxShape.circle, color: color),
            child: Center(
                child: Text(title,
                    style: const TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ))),
          ),
        ),
      ),
    );
  }
}
