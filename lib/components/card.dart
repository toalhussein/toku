import 'package:flutter/material.dart';
import 'package:toku/models/number_model.dart';
import 'item_info.dart';

class card extends StatelessWidget {
  const card({super.key ,required this.item, required this.color});
  
  final Color color ;
  final ItemModel item; 
  @override
  Widget build(BuildContext context) {
    return Container(
            height: 120,
            color: color,
            child: Row(
              children: [
              Padding(
                padding: const EdgeInsets.all(7.0),
                child: Container(
                    height: 80,
                    decoration: BoxDecoration(
                    color:const Color(0xffFFF4DB),
                    borderRadius: BorderRadius.circular(20)
                    ),                  
                    child: Image.asset(item.image!)),
              ),
              Expanded(child: ItemInfo(item: item))
            ]),
           
          );  
  }
}

