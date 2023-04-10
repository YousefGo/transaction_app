import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:transaction_app/screen/categories.dart';
import 'package:transaction_app/screen/login.dart';
import 'package:transaction_app/screen/regsiter.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: Login(),
      routes: {
        '/login':(context)=>Login(),
        '/register':(context)=>Register(),
        '/categories':(context)=>Categories(),
      },
    );
  }
}






