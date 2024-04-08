// ignore_for_file: file_names, use_super_parameters

import 'package:flutter/material.dart';
import 'package:germano/components/Phrases_Item.dart';
import 'package:germano/models/number.dart';

class PhrasesPage extends StatelessWidget {
  const PhrasesPage({Key? key}) : super(key: key);

  final List<ItemModel> phrase = const [
    ItemModel(
      sound: 'sounds/phrases/phraseone.mp3',
      gerName: 'Ich lerne Deutsch',
      engName: 'Iam Learning German',
    ),
    ItemModel(
      sound: 'sounds/phrases/phrasetwo.mp3',
      gerName: 'Ich bin Programmierer',
      engName: 'Iam a programmer',
    ),
    ItemModel(
      sound: 'sounds/phrases/phrasethree.mp3',
      gerName: 'Ich liebe programmieren',
      engName: 'i love coding',
    ),
    ItemModel(
      sound: 'sounds/phrases/phrasefour.mp3',
      gerName: 'Ich komme aus Ägypten',
      engName: 'I am from Egypt',
    ),
    ItemModel(
      sound: 'sounds/phrases/phrasefive.mp3',
      gerName: 'Guten Morgen',
      engName: 'Good Morning',
    ),
    ItemModel(
      sound: 'sounds/phrases/phrasesix.mp3',
      gerName: 'Gute Nacht',
      engName: 'Good Night',
    ),
    ItemModel(
      sound: 'sounds/phrases/phraseseven.mp3',
      gerName: 'Vielen Dank',
      engName: 'Thank you very much',
    ),
    ItemModel(
      sound: 'sounds/phrases/phraseeight.mp3',
      gerName: 'Tschüss, bis zum nächsten Mal',
      engName: 'Goodbye, see you next time',
    ),
    ItemModel(
      sound: 'sounds/phrases/phrasenine.mp3',
      gerName: 'Freut mich',
      engName: 'Nice to meet you',
    ),
    ItemModel(
      sound: 'sounds/phrases/phraseten.mp3',
      gerName: 'Ich spreche nicht gut Deutsch ',
      engName: 'I do not speak German well',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 5,
          shadowColor: const Color.fromARGB(255, 0, 0, 0),
          title: const Text(
            'Phrases',
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
            final bool isLastItem = index == phrase.length - 1;
            return Padding(
              padding: isLastItem
                  ? EdgeInsets.zero
                  : const EdgeInsets.only(bottom: 2), // Adjust padding
              child: PhrasesItem(item: phrase[index]),
            );
          },
          itemCount: phrase.length,
        ));
  }
}
