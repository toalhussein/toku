import 'package:flutter/material.dart';
import 'package:toku/components/card.dart';
import 'package:toku/models/number_model.dart';

class colors_page extends StatelessWidget {
  const colors_page({super.key});

  final List<ItemModel> number = const [
    ItemModel(
        image: 'assets/images/colors/color_black.png',
        enName: 'Black',
        jpName: 'Kuro',
        sound: 'sounds/colors/black.wav'),
    ItemModel(
        image: 'assets/images/colors/color_brown.png',
        enName: 'brown',
        jpName: 'Chairo',
        sound: 'sounds/colors/brown.wav'),
    ItemModel(
        image: 'assets/images/colors/color_dusty_yellow.png',
        enName: 'dusty yellow',
        jpName: 'Dasutiierō',
        sound: 'sounds/colors/dusty_yellow.wav'),
    ItemModel(
        image: 'assets/images/colors/color_gray.png',
        enName: 'gray',
        jpName: 'Gurē',
        sound: 'sounds/colors/gray.wav'),
    ItemModel(
        image: 'assets/images/colors/color_red.png',
        enName: 'red',
        jpName: 'Aka',
        sound: 'sounds/colors/red.wav'),
    ItemModel(
        image: 'assets/images/colors/color_white.png',
        enName: 'white',
        jpName: 'Shiro',
        sound: 'sounds/colors/white.wav'),
    ItemModel(
        image: 'assets/images/colors/yellow.png',
        enName: 'yellow',
        jpName: 'Kiiro',
        sound: 'sounds/colors/yellow.wav')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        shape: const RoundedRectangleBorder(
          borderRadius:  BorderRadius.only(
          bottomRight: Radius.circular(0),
          bottomLeft: Radius.circular(0))
          ),
        toolbarHeight: 50,
        title: const Text('Colors',style: TextStyle(letterSpacing: 6,color: Colors.white)),
        backgroundColor: const Color(0xff7D40A2),
      ),
      body: ListView.builder(
        itemCount: number.length,
        itemBuilder: (context, index){
          return card(item: number[index],color: const Color(0xff7D40A2));
        },
      ),
    );
  }

}
