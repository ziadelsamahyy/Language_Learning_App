import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:language_learning_app/models/number.dart';

class ListItem extends StatelessWidget {
  const ListItem({super.key,required this.number, required this.color, required this.itemType,});
  final Item number;
  final Color color ;
  final String itemType ;


  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: color,
      child: Row(
        children:
        [
          Container(
            color:Color(0xffFFF6DC),

            child: Image.asset(
              number.Image,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Text(
              number.enName,
              style:TextStyle(
                fontSize: 25,
                color:Colors.white,
              ),
            ),
          ),
          Spacer(
            flex: 1,
          ),
          IconButton(
              onPressed: ()
              {
                final player = AudioCache(prefix: 'assets/sounds/$itemType/');
                player.play(number.sound);
              },
              icon:Icon(
                Icons.play_arrow,
                color: Colors.white,
                size: 30,
              ),
          ),
        ],
      ),
    );
  }
}
