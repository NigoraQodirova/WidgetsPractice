import 'package:flutter/material.dart';

class GreetingWidget extends StatelessWidget {
  final String message;

  const GreetingWidget({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    return Text(message);
  }
}
