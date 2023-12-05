import 'package:flutter/material.dart';
import 'package:flutter_application_9/categoryPage.dart';
import 'package:flutter_application_9/getx/counterGetx.dart';
import 'package:flutter_application_9/page1.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GetMaterialApp(
        theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.brown),
            useMaterial3: true),
        debugShowCheckedModeBanner: false,
        home: const Counter(),
      ),
    );
  }
}
