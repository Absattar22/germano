// ignore_for_file: use_super_parameters

import 'package:flutter/material.dart';
import 'package:germano/components/item_Info.dart';
import 'package:germano/models/number.dart';

class Item extends StatelessWidget {
  const Item({Key? key, required this.item}) : super(key: key);
  final ItemModel item;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: const Color.fromARGB(255, 27, 33, 70),
      child: Row(
        children: [
          Container(
              color: const Color.fromARGB(255, 196, 186, 186),
              child: Image.asset(item.image!)),
          Expanded(child: ItemInfo(item: item)),
        ],
      ),
    );
  }
}
