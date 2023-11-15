import 'package:flutter/material.dart';
import 'package:toku/components/card.dart';
import 'package:toku/models/number_model.dart';

class NumbersPage extends StatelessWidget {
  const NumbersPage({super.key});

  final List<ItemModel> number = const [
    ItemModel(
        image: 'assets/images/numbers/number_one.png',
        enName: 'one',
        jpName: 'ichi',
        sound: 'sounds/numbers/number_one_sound.mp3'),
    ItemModel(
        image: 'assets/images/numbers/number_two.png',
        enName: 'two',
        jpName: 'ni',
        sound: 'sounds/numbers/number_two_sound.mp3'),
    ItemModel(
        image: 'assets/images/numbers/number_three.png',
        enName: 'three',
        jpName: 'Mittsu',
        sound: 'sounds/numbers/number_three_sound.mp3'),
    ItemModel(
        image: 'assets/images/numbers/number_four.png',
        enName: 'four',
        jpName: 'Shi',
        sound: 'sounds/numbers/number_four_sound.mp3'),
    ItemModel(
        image: 'assets/images/numbers/number_five.png',
        enName: 'five',
        jpName: 'Go',
        sound: 'sounds/numbers/number_five_sound.mp3'),
    ItemModel(
        image: 'assets/images/numbers/number_six.png',
        enName: 'six',
        jpName: 'Roku',
        sound: 'sounds/numbers/number_six_sound.mp3'),
    ItemModel(
        image: 'assets/images/numbers/number_seven.png',
        enName: 'seven',
        jpName: 'Sebun',
        sound: 'sounds/numbers/number_seven_sound.mp3'),
    ItemModel(
        image: 'assets/images/numbers/number_eight.png',
        enName: 'eight',
        jpName: 'Hachi',
        sound: 'sounds/numbers/number_eight_sound.mp3'),
    ItemModel(
        image: 'assets/images/numbers/number_nine.png',
        enName: 'nine',
        jpName: 'Kyū',
        sound: 'sounds/numbers/number_nine_sound.mp3'),
    ItemModel(
        image: 'assets/images/numbers/number_ten.png',
        enName: 'ten',
        jpName: 'Jū',
        sound: 'sounds/numbers/number_ten_sound.mp3'), 
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
        title: const Text('Numbers',style: TextStyle(letterSpacing: 6,color: Colors.white)),
        backgroundColor: Color(0xFFF99532),
      ),
      body: ListView.builder(
        itemCount: number.length,
        itemBuilder: (context, index){
          return card(item: number[index], color: const Color(0xffF99531),);
        },
      ),
    );
  }

}
