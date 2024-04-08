import 'package:flutter/material.dart';
import 'package:germano/screens/Home_Page.dart';

void main() {
  runApp(germano());
}

// ignore: camel_case_types, use_key_in_widget_constructors
class germano extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
