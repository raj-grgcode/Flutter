import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Raj')),
        body: const Padding(
          padding: EdgeInsets.all(0),
          child: Row(
            children: [
              Text('Rajma'),
              SizedBox(width: 20),
              Text('Pulao'),
              SizedBox(width: 20),
              Text('Tarkari'),
            ],
          ),
        ),
      ),
    );
  }
}
