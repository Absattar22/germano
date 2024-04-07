// ignore_for_file: use_super_parameters

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:germano/models/number.dart';

class Item extends StatelessWidget {
  const Item({Key? key, required this.number}) : super(key: key);
  final ItemModel number;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: const Color.fromARGB(255, 27, 33, 70),
      child: Row(
        children: [
          Container(
              color: const Color.fromARGB(255, 192, 205, 234),
              child: Image.asset(number.image, width: 100, height: 100)),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(number.gerName,
                    style: const TextStyle(
                      color: Color.fromARGB(255, 83, 231, 229),
                      fontSize: 18,
                      fontFamily: 'Emad',
                    ),
                    textAlign: TextAlign.center),
                Text(number.engName,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontFamily: 'Emad',
                    )),
              ],
            ),
          ),
          const Spacer(flex: 1),
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: IconButton(
              onPressed: () {
                // ignore: non_constant_identifier_names
                final Player = AudioPlayer();
                Player.play(AssetSource(number.sound));
              },
              icon: const Icon(Icons.play_arrow),
              alignment: Alignment.centerRight,
              color: const Color.fromARGB(255, 255, 255, 255),
              iconSize: 30,
            ),
          ),
        ],
      ),
    );
  }
}
