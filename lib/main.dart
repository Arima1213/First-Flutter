import 'package:cobacoba/pages/home.dart';
import 'package:flutter/material.dart';

main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Gojek UI',
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}
