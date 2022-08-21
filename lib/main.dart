import 'package:flutter/material.dart';
import 'package:product_detail_screen/Screens/product_detail.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
       
        primarySwatch: Colors.blue,
      ),
      home:  Product_Detail(), 
    );
  }
}

