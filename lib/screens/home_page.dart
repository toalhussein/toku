import 'package:flutter/material.dart';
import 'package:toku/components/category.dart';
import 'package:toku/screens/numbers_page.dart';
import 'package:toku/screens/phrases_page.dart';

import 'colors_page.dart';
import 'family_members.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffEEE4CB),
      appBar: AppBar(
        centerTitle: true,
        shape: const RoundedRectangleBorder(
          borderRadius:  BorderRadius.only(
          bottomRight: Radius.circular(30),
          bottomLeft: Radius.circular(30))
          ),
        toolbarHeight: 50,
        title: const Text('Toku',style: TextStyle(letterSpacing: 6,color: Colors.black)),
        backgroundColor: Color(0xFFEEE4CB),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
           // crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.values.last,
            children: [
              Category('assets/images/home_images/numbers.png', Color(0xffF99531), () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (BuildContext context) {
                  return const NumbersPage();
                }));
              }),
              Category('assets/images/home_images/family.png', Color(0xff528032), () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (BuildContext context) {
                  return const FamilyMembersPage();
                }));
              }),   
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.values.last,
            children: [
              Category('assets/images/home_images/colors.png', Color(0xff7D40A2), () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (BuildContext context) {
                  return const colors_page();
                }));
              }),
              Category('assets/images/home_images/language2.png', Color(0xff47A5CB), () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (BuildContext context) {
                  return const PhrasesPage();
                }));
              })
            ],
          )
        ],
      ),
    );
  }
}
