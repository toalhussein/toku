import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Category extends StatelessWidget {
  Category(this.image, this.color, this.onTap);

  String? image;
  Color? color;
  Function()? onTap;
  @override
  Widget build(BuildContext context) {

    return GestureDetector(
      onTap: onTap ,
      child: CircleAvatar(
        radius: 53,
        backgroundColor: Colors.white,
        child: Container(
            width: 110,
            height: 100,
            decoration: BoxDecoration(
              color: color,
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage('$image')
              ),
          ),
        ),
      )
    );
  }
}
