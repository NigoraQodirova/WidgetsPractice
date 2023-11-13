import 'package:flutter/material.dart';
import 'package:widgets_practice/CounterWidget.dart';
import 'package:widgets_practice/GreetingWidget.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.lightBlueAccent,
        body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GreetingWidget(message: 'Welcome, I am stateless widget.'),
                    GreetingWidget(
                        message: 'And I am another stateless widget'),
                    CounterWidget(),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(children: [
                      GreetingWidget(
                          message: 'Another stateless and useless widget.'),
                      Icon(
                        Icons.audiotrack,
                        color: Colors.green,
                        size: 30.0,
                      ),
                      Text(
                        'This is Text widget',
                        style: TextStyle(color: Colors.red, fontSize: 20),
                      )
                    ]),
                    CounterWidget()
                  ],
                ),
              ]),
        ),
      ),
    );
  }
}
