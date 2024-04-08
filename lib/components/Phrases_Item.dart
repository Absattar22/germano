// ignore_for_file: use_super_parameters, file_names

import 'package:flutter/material.dart';
import 'package:germano/models/number.dart';
import 'item_info.dart';

class PhrasesItem extends StatelessWidget {
  const PhrasesItem({Key? key, required this.item}) : super(key: key);

  final ItemModel item;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 27, 33, 70),
      height: 100,
      child: ItemInfo(item: item),
    );
  }
}
