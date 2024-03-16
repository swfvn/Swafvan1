import 'package:flutter/material.dart';
import 'package:proj1/Dropbutton/dropb.dart';
import 'package:proj1/Snackbar/Snack.dart';
import 'package:proj1/text.dart';

import 'appbar.dart';
import 'image.dart';
import 'radio.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:  Snack()
    );
  }
}
