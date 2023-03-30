import 'package:flutter/material.dart';
import 'package:simple_flutter_ui_design/screens/basic_design.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: 'basic_design',
      routes: {
        'basic_design': ( _ ) => const BasicDesignScreen(),
      },
    );
  }
}

