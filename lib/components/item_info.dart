import 'package:flutter/material.dart';
import '../models/number_model.dart';

class ItemInfo extends StatelessWidget {
  const ItemInfo({super.key, required this.item});
  final ItemModel item;

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      item.jpName,
                      style: const TextStyle(color: Colors.white, fontSize: 16),
                    ),
                    Text(
                      item.enName,
                      style: const TextStyle(color: Color.fromARGB(202, 241, 237, 237), fontSize: 13),
                    ),
                  ],
                ),
              ),
              const Spacer(flex: 1),
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: IconButton(
                  color: Colors.white,
                  onPressed: (){
                    item.PlaySound();
                  },
                  icon: const Icon(Icons.play_arrow)
                  ),
              )
      ],
    );
  }
}

