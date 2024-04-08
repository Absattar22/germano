// ignore_for_file: file_names, non_constant_identifier_names, use_key_in_widget_constructors, must_be_immutable, use_super_parameters
import 'package:flutter/material.dart';
import 'package:germano/components/Category_Items.dart';
import 'package:germano/screens/Colors_Screen.dart';
import 'package:germano/screens/Family_Members_Screen.dart';
import 'package:germano/screens/Numbers_Screen.dart';
import 'package:germano/screens/Phrases_Page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 210, 229, 233),
      appBar: AppBar(
          elevation: 5,
          shadowColor: const Color.fromARGB(255, 0, 0, 0),
          title: const Text(
            'Germano',
            style: TextStyle(
              color: Color.fromARGB(255, 255, 255, 255),
              fontSize: 24,
              fontWeight: FontWeight.bold,
              fontFamily: 'Kalam',
            ),
          ),
          backgroundColor: const Color.fromARGB(255, 28, 153, 202),
          leading: Transform.scale(
            scale: 0.70,
            child: Image.asset(
              'assets/images/germany.png',
            ),
          )),
      body: Column(children: [
        Category(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const NumbersPage();
              }));
            },
            text: 'Numbers',
            color: const Color.fromARGB(255, 27, 33, 70)),
        const Padding(padding: EdgeInsets.all(1)),
        Category(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return const FamilyMembersPage();
            }));
          },
          text: 'Family Members',
          color: const Color.fromARGB(255, 27, 33, 70),
        ),
        const Padding(padding: EdgeInsets.all(1)),
        Category(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const ColorsPage();
              }));
            },
            text: 'Colors',
            color: const Color.fromARGB(255, 27, 33, 70)),
        const Padding(padding: EdgeInsets.all(1)),
        Category(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const PhrasesPage();
              }));
            },
            text: 'Phrases',
            color: const Color.fromARGB(255, 27, 33, 70)),
      ]),
    );
  }
}
