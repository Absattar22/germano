// ignore_for_file: must_be_immutable, use_key_in_widget_constructors, unnecessary_import, file_names

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Category extends StatelessWidget {
  Category({this.text, this.onTap, required this.color ,});
  String? text;
  VoidCallback? onTap;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 70,
        width: double.infinity,
        color: color,
        alignment: Alignment.centerLeft,
        padding: const EdgeInsets.only(left: 20),
        child: Text(
          text!,
          style: const TextStyle(
              color: Colors.white, fontSize: 18, fontFamily: 'Emad'),
        ),
      ),
    );
  }
}
