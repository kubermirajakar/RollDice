import 'package:flutter/material.dart';
import 'package:helloworld/Centered.dart';

class ContainerNew extends StatelessWidget {
  ContainerNew({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0x623f1010), Colors.black45],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: const Centered());
  }
}
