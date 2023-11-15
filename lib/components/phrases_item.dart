import 'package:flutter/material.dart';

import '../models/number_model.dart';
import 'item_info.dart';

class PhrasesItem extends StatelessWidget {
  const PhrasesItem({super.key, required this.item, required this.color});

  final ItemModel item;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      color: color,
      child: ItemInfo(item: item),
    );
  }
}