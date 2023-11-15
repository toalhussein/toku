import 'package:flutter/material.dart';
import 'package:toku/components/card.dart';
import 'package:toku/models/number_model.dart';

class FamilyMembersPage extends StatelessWidget {
  const FamilyMembersPage({super.key});

  final List<ItemModel> number = const [
    ItemModel(
        image: 'assets/images/family_members/family_daughter.png',
        enName: 'daughter',
        jpName: 'Musume',
        sound: 'sounds/family_members/daughter.wav'),
    ItemModel(
        image: 'assets/images/family_members/family_father.png',
        enName: 'father',
        jpName: 'Chichioya',
        sound: 'sounds/family_members/father.wav'),
    ItemModel(
        image: 'assets/images/family_members/family_grandfather.png',
        enName: 'grand father',
        jpName: 'Sofu',
        sound: 'sounds/family_members/grand father.wav'),
    ItemModel(
        image: 'assets/images/family_members/family_grandmother.png',
        enName: 'grand mother',
        jpName: 'Sobo',
        sound: 'sounds/family_members/grand mother.wav'),
    ItemModel(
        image: 'assets/images/family_members/family_mother.png',
        enName: 'mother',
        jpName: 'Hahaoya',
        sound: 'sounds/family_members/mother.wav'),
    ItemModel(
        image: 'assets/images/family_members/family_older_brother.png',
        enName: 'older bother',
        jpName: 'Ani',
        sound: 'sounds/family_members/older bother.wav'),
    ItemModel(
        image: 'assets/images/family_members/family_older_sister.png',
        enName: 'older sister',
        jpName: 'Ane',
        sound: 'sounds/family_members/older sister.wav'),
    ItemModel(
        image: 'assets/images/family_members/family_son.png',
        enName: 'son',
        jpName: 'Musuko',
        sound: 'sounds/family_members/son.wav'),
    ItemModel(
        image: 'assets/images/family_members/family_younger_brother.png',
        enName: 'younger brother',
        jpName: 'Otōto',
        sound: 'sounds/family_members/younger brohter.wav'),
    ItemModel(
        image: 'assets/images/family_members/family_younger_sister.png',
        enName: 'younger sister',
        jpName: 'Imōto',
        sound: 'sounds/family_members/younger sister.wav'), 
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
        backgroundColor: Color(0xff548634),
      ),
      body: ListView.builder(
        itemCount: number.length,
        itemBuilder: (context, index){
          return card(item: number[index],color: const Color(0xff548634));
        },
      ),
    );
  }

}
