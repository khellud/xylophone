import 'package:flutter/material.dart';

void main() {
  runApp(const XylaphoneApp());
}

class XylaphoneApp extends StatelessWidget {
  const XylaphoneApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Container(),
        ),
      ),
    );
  }
}
