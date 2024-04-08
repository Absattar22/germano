// ignore_for_file: use_super_parameters, file_names

import 'package:flutter/material.dart';
import 'package:germano/models/number.dart';

class ItemInfo extends StatelessWidget {
  const ItemInfo({Key? key, required this.item}) : super(key: key);

  final ItemModel item;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                item.gerName,
                style: const TextStyle(
                  color: Color.fromARGB(255, 83, 231, 229),
                  fontSize: 20,
                ),
              ),
              Text(
                item.engName,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ],
          ),
        ),
        const Spacer(
          flex: 1,
        ),
        IconButton(
          onPressed: () {
            // ignore: non_constant_identifier_names
            item.playSound();
          },
          icon: const Icon(
            Icons.play_arrow,
            color: Colors.white,
            size: 28,
          ),
        ),
      ],
    );
  }
}
