// ignore_for_file: file_names, use_super_parameters

import 'package:flutter/material.dart';
import 'package:germano/components/item.dart';
import 'package:germano/models/number.dart';

class NumbersPage extends StatelessWidget {
  const NumbersPage({Key? key}) : super(key: key);
  final List<ItemModel> numbers = const [
    ItemModel(
      sound: 'sounds/numbers/number_one.mp3',
      gerName: 'Eins',
      engName: 'One',
      image: 'assets/images/numbers/one.png',
    ),
    ItemModel(
      sound: 'sounds/numbers/number_two.mp3',
      gerName: 'Zwei',
      engName: 'Two',
      image: 'assets/images/numbers/two.png',
    ),
    ItemModel(
      sound: 'sounds/numbers/number_three.mp3',
      gerName: 'Drei',
      engName: 'Three',
      image: 'assets/images/numbers/three.png',
    ),
    ItemModel(
      sound: 'sounds/numbers/number_four.mp3',
      gerName: 'Vier',
      engName: 'Four',
      image: 'assets/images/numbers/four.png',
    ),
    ItemModel(
      sound: 'sounds/numbers/number_five.wav',
      gerName: 'Fünf',
      engName: 'Five',
      image: 'assets/images/numbers/five.png',
    ),
    ItemModel(
      sound: 'sounds/numbers/number_sex.wav',
      gerName: 'Sechs',
      engName: 'Six',
      image: 'assets/images/numbers/six.png',
    ),
    ItemModel(
      sound: 'sounds/numbers/number_seven.wav',
      gerName: 'Sieben',
      engName: 'Seven',
      image: 'assets/images/numbers/seven.png',
    ),
    ItemModel(
      sound: 'sounds/numbers/number_eight.wav',
      gerName: 'Acht',
      engName: 'Eight',
      image: 'assets/images/numbers/eight.png',
    ),
    ItemModel(
      sound: 'sounds/numbers/number_nine.wav',
      gerName: 'Neun',
      engName: 'Nine',
      image: 'assets/images/numbers/nine.png',
    ),
    ItemModel(
      sound: 'sounds/numbers/number_ten.wav',
      gerName: 'Zehn',
      engName: 'Ten',
      image: 'assets/images/numbers/ten.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 5,
          shadowColor: const Color.fromARGB(255, 0, 0, 0),
          title: const Text(
            'Numbers',
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
            final bool isLastItem = index == numbers.length - 1;
            return Padding(
              padding: isLastItem
                  ? EdgeInsets.zero
                  : const EdgeInsets.only(bottom: 1), // Adjust padding
              child: Item(item: numbers[index]),
            );
          },
          itemCount: numbers.length,
        ));
  }
}
