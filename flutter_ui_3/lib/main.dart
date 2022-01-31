import 'package:flutter/material.dart';
import 'package:flutter_ui_3/screens/home/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Ui 3',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: const HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
