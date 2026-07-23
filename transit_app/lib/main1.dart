import 'package:flutter/material.dart';
import 'counter.dart'; // ← imports your other file

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Counter Demo')),
        body: const Center(
          child: MyWidget(), // ← using your StatefulWidget here
        ),
      ),
    );
  }
}
