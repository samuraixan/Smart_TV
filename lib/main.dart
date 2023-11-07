import 'package:flutter/material.dart';
import 'package:smart_tv/my_home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          scaffoldBackgroundColor: Colors.black,
          iconTheme: const IconThemeData(color: Colors.white, size: 20),
      ),
    );
  }
}

