import 'package:flutter/material.dart';
import 'package:toku/models/number_model.dart';

import '../components/phrases_item.dart';

class PhrasesPage extends StatelessWidget {
  const PhrasesPage({super.key});

  final List<ItemModel> PhrasesList = const [
    ItemModel(
        enName: 'good night',
        jpName: 'Oyasumi',
        sound: 'sounds/phrases/Good_night.mp3'),
    ItemModel(
        enName: 'how are you',
        jpName: 'Genkidesu ka',
        sound: 'sounds/phrases/how_are_u.mp3'),
    ItemModel(
        enName: 'i love playing football',
        jpName: 'Watashi wa sakkā o suru no ga \ndaisukidesu',
        sound: 'sounds/phrases/i_love_playing_football.mp3'),
    ItemModel(
        enName: 'i love programming',
        jpName: 'Watashi wa puroguramingu ga \ndaisukidesu',
        sound: 'sounds/phrases/i_love_programming .mp3'),
    ItemModel(
        enName: 'my name is alhussein',
        jpName: 'Watashinonamaeha arufuseindesu',
        sound: 'sounds/phrases/my_name_is_alhussein.mp3'),
    ItemModel(
        enName: 'see you later',
        jpName: 'Mataatode',
        sound: 'sounds/phrases/See_you_later.mp3'),
    ItemModel(
        enName: 'what is your favorite food',
        jpName: 'Sukinatabemono wa nandesuka',
        sound: 'sounds/phrases/what is_your_favorite_food.mp3'),
    ItemModel(
        enName: 'what are you doing',
        jpName: 'Nanishiteruno',
        sound: 'sounds/phrases/what_are_you_doing.mp3'),
    ItemModel(
        enName: 'what is your name',
        jpName: 'Anata no namae wa nandesuka',
        sound: 'sounds/phrases/what_is_your_name.mp3'),
    ItemModel(
        enName: 'yes i am coming',
        jpName: 'Hai, kimasu',
        sound: 'sounds/phrases/yes_im_coming.wav'), 
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
        title: const Text('Phrases',style: TextStyle(letterSpacing: 6,color: Colors.white)),
        backgroundColor: const Color(0xff47A5CB),
      ),
      body: ListView.builder(
        itemCount: PhrasesList.length,
        itemBuilder: (context, index){
          return PhrasesItem(item: PhrasesList[index],
          color: const Color(0xff47A5CB)
          );
        },
      ),
    );
  }

}
