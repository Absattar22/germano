// ignore_for_file: file_names, use_super_parameters

import 'package:flutter/material.dart';
import 'package:germano/components/item.dart';
import 'package:germano/models/number.dart';

class FamilyMembersPage extends StatelessWidget {
  const FamilyMembersPage({Key? key}) : super(key: key);

  final List<ItemModel> numbers = const [
    ItemModel(
      sound: 'sounds/numbers/number_one.mp3',
      gerName: 'Vater',
      engName: 'Father',
      image: 'assets/images/family_members/dad.png',
    ),
    ItemModel(
      sound: 'sounds/numbers/number_two.mp3',
      gerName: 'Mutter',
      engName: 'Mother',
      image: 'assets/images/family_members/mam.png',
    ),
    ItemModel(
      sound: 'sounds/numbers/number_three.mp3',
      gerName: 'Sohn',
      engName: 'Son',
      image: 'assets/images/family_members/son.png',
    ),
    ItemModel(
      sound: 'sounds/numbers/number_four.mp3',
      gerName: 'Tochter',
      engName: 'Daughter',
      image: 'assets/images/family_members/daughter.png',
    ),
    ItemModel(
      sound: 'sounds/numbers/number_sex.wav',
      gerName: 'Bruder',
      engName: 'Brother',
      image: 'assets/images/family_members/brother.png',
    ),
    ItemModel(
      sound: 'sounds/numbers/number_sex.wav',
      gerName: 'Schwester',
      engName: 'Sister',
      image: 'assets/images/family_members/sister.png',
    ),
    ItemModel(
      sound: 'sounds/numbers/number_five.wav',
      gerName: 'Großmutter',
      engName: 'Grandmother',
      image: 'assets/images/family_members/grandMother.png',
    ),
    ItemModel(
      sound: 'sounds/numbers/number_sex.wav',
      gerName: 'Großvater',
      engName: 'Grandfather',
      image: 'assets/images/family_members/grandfather.png',
    ),
    ItemModel(
      sound: 'sounds/numbers/number_sex.wav',
      gerName: 'Ehemann',
      engName: 'Husband',
      image: 'assets/images/family_members/husband.png',
    ),
    ItemModel(
      sound: 'sounds/numbers/number_sex.wav',
      gerName: 'Ehefrau',
      engName: 'Wife',
      image: 'assets/images/family_members/wife.png',
    ),
    ItemModel(
      sound: 'sounds/numbers/number_seven.wav',
      gerName: 'Tante',
      engName: 'Aunt',
      image: 'assets/images/family_members/aunt.png',
    ),
    ItemModel(
      sound: 'sounds/numbers/number_eight.wav',
      gerName: 'Onkel',
      engName: 'Uncle',
      image: 'assets/images/family_members/uncle.png',
    ),
    ItemModel(
      sound: 'sounds/numbers/number_nine.wav',
      gerName: 'Freund',
      engName: 'Friend',
      image: 'assets/images/family_members/friend.png',
    ),
    ItemModel(
      sound: 'sounds/numbers/number_ten.wav',
      gerName: 'Freundin',
      engName: 'Girlfriend',
      image: 'assets/images/family_members/Girl_Friend.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 5,
          shadowColor: const Color.fromARGB(255, 0, 0, 0),
          title: const Text(
            'Family Members',
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
                  : const EdgeInsets.only(bottom: 2), // Adjust padding
              child: Item(
                  number: numbers[index]),
            );
          },
          itemCount: numbers.length,
        ));
  }
}
