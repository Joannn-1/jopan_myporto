import 'package:flutter/material.dart';
import 'halaman/dashboard.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MyPorto',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 139, 38, 38),
        ),
        useMaterial3: true,
      ),
      home: const Dashboard(),
    );
  }
}
