// ignore_for_file: file_names, use_super_parameters

import 'package:flutter/material.dart';
import 'package:germano/components/item.dart';
import 'package:germano/models/number.dart';

class FamilyMembersPage extends StatelessWidget {
  const FamilyMembersPage({Key? key}) : super(key: key);

  final List<ItemModel> familyMembers = const [
    ItemModel(
      sound: 'sounds/family_members/vater.wav',
      gerName: 'Vater',
      engName: 'Father',
      image: 'assets/images/family_members/dad.png',
    ),
    ItemModel(
      sound: 'sounds/family_members/mutter.wav',
      gerName: 'Mutter',
      engName: 'Mother',
      image: 'assets/images/family_members/mam.png',
    ),
    ItemModel(
      sound: 'sounds/family_members/sohn.wav',
      gerName: 'Sohn',
      engName: 'Son',
      image: 'assets/images/family_members/son.png',
    ),
    ItemModel(
      sound: 'sounds/family_members/tochter.wav',
      gerName: 'Tochter',
      engName: 'Daughter',
      image: 'assets/images/family_members/daughter.png',
    ),
    ItemModel(
      sound: 'sounds/family_members/bruder.wav',
      gerName: 'Bruder',
      engName: 'Brother',
      image: 'assets/images/family_members/brother.png',
    ),
    ItemModel(
      sound: 'sounds/family_members/Schwester.wav',
      gerName: 'Schwester',
      engName: 'Sister',
      image: 'assets/images/family_members/sister.png',
    ),
    ItemModel(
      sound: 'sounds/family_members/Großmutter.wav',
      gerName: 'Großmutter',
      engName: 'Grandmother',
      image: 'assets/images/family_members/grandMother.png',
    ),
    ItemModel(
      sound: 'sounds/family_members/Großvater.wav',
      gerName: 'Großvater',
      engName: 'Grandfather',
      image: 'assets/images/family_members/grandfather.png',
    ),
    ItemModel(
      sound: 'sounds/family_members/Ehemann.wav',
      gerName: 'Ehemann',
      engName: 'Husband',
      image: 'assets/images/family_members/husband.png',
    ),
    ItemModel(
      sound: 'sounds/family_members/Ehefrau.wav',
      gerName: 'Ehefrau',
      engName: 'Wife',
      image: 'assets/images/family_members/wife.png',
    ),
    ItemModel(
      sound: 'sounds/family_members/Tante.wav',
      gerName: 'Tante',
      engName: 'Aunt',
      image: 'assets/images/family_members/aunt.png',
    ),
    ItemModel(
      sound: 'sounds/family_members/Onkel.wav',
      gerName: 'Onkel',
      engName: 'Uncle',
      image: 'assets/images/family_members/uncle.png',
    ),
    ItemModel(
      sound: 'sounds/family_members/Freund.wav',
      gerName: 'Freund',
      engName: 'Friend',
      image: 'assets/images/family_members/friend.png',
    ),
    ItemModel(
      sound: 'sounds/family_members/Freundin.wav',
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
            final bool isLastItem = index == familyMembers.length - 1;
            return Padding(
              padding: isLastItem
                  ? EdgeInsets.zero
                  : const EdgeInsets.only(bottom: 2), // Adjust padding
              child: Item(item: familyMembers[index]),
            );
          },
          itemCount: familyMembers.length,
        ));
  }
}
