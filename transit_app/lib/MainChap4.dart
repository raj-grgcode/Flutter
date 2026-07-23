import 'package:flutter/material.dart';
import 'chap4.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Book a Trip')),
        body: const Center(
          child: Padding(padding: EdgeInsets.all(20), child: BookingForm()),
        ),
      ),
    );
  }
}
