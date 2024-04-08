// ignore_for_file: file_names, use_super_parameters

import 'package:flutter/material.dart';
import 'package:germano/components/item.dart';
import 'package:germano/models/number.dart';

class ColorsPage extends StatelessWidget {
  const ColorsPage({Key? key}) : super(key: key);

  final List<ItemModel> colors = const [
    ItemModel(
      sound: 'sounds/colors/Weiß.mp3',
      gerName: 'Weiß',
      engName: 'White',
      image: 'assets/images/colors/color_white.png',
    ),
    ItemModel(
      sound: 'sounds/colors/Schwarz.mp3',
      gerName: 'Schwarz',
      engName: 'Black',
      image: 'assets/images/colors/color_black.png',
    ),
    ItemModel(
      sound: 'sounds/colors/Rot.mp3',
      gerName: 'Rot',
      engName: 'Red',
      image: 'assets/images/colors/color_red.png',
    ),
    ItemModel(
      sound: 'sounds/colors/Grün.mp3',
      gerName: 'Grün',
      engName: 'Green',
      image: 'assets/images/colors/color_green.png',
    ),
    ItemModel(
      sound: 'sounds/colors/Gelb.mp3',
      gerName: 'Gelb',
      engName: 'Yellow',
      image: 'assets/images/colors/yellow.png',
    ),
    ItemModel(
      sound: 'sounds/colors/Blau.mp3',
      gerName: 'Blau',
      engName: 'Blue',
      image: 'assets/images/colors/blue.png',
    ),
    ItemModel(
      sound: 'sounds/colors/Braun.mp3',
      gerName: 'Braun',
      engName: 'Brown',
      image: 'assets/images/colors/color_brown.png',
    ),
    ItemModel(
      sound: 'sounds/colors/Rosa.mp3',
      gerName: 'Rosa',
      engName: 'Pink',
      image: 'assets/images/colors/Pink.png',
    ),
    ItemModel(
      sound: 'sounds/colors/Lila.mp3',
      gerName: 'Lila',
      engName: 'Purple',
      image: 'assets/images/colors/Purple.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 5,
          shadowColor: const Color.fromARGB(255, 0, 0, 0),
          title: const Text(
            'Colors',
            style: TextStyle(
              color: Color.fromARGB(255, 255, 255, 255),
              fontSize: 24,
              fontWeight: FontWeight.bold,
              fontFamily: 'Kalam',
            ),
          ),
          backgroundColor: const Color.fromARGB(255, 28, 153, 202),
        ),
        body: ListView.builder(
          itemBuilder: (context, index) {
            final bool isLastItem = index == colors.length - 1;
            return Padding(
              padding: isLastItem
                  ? EdgeInsets.zero
                  : const EdgeInsets.only(bottom: 2), // Adjust padding
              child: Item(item: colors[index]),
            );
          },
          itemCount: colors.length,
        ));
  }
}
