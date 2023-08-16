import 'package:flutter/material.dart';
import 'package:language_learning_app/components/list_item.dart';
import 'package:language_learning_app/models/number.dart';

class ColorsPage extends StatelessWidget {
  const ColorsPage({super.key});

  final List<Item> colors = const [
    Item(Image: 'assets/images/colors/color_red.png', enName: 'red',sound: 'red.mp3'),
    Item(Image: 'assets/images/colors/color_white.png', enName: 'white',sound: 'white.mp3'),
    Item(Image: 'assets/images/colors/color_green.png', enName: 'green', sound:'green.mp3'),
    Item(Image: 'assets/images/colors/color_black.png', enName: 'black',sound: 'black.mp3'),
    Item(Image: 'assets/images/colors/yellow.png', enName: 'yellow',sound: 'yellow.mp3'),
    Item(Image: 'assets/images/colors/color_brown.png', enName: 'brown',sound: 'brown.mp3'),
    Item(Image: 'assets/images/colors/color_pink.png', enName: 'pink',sound: 'pink.mp3'),
    Item(Image: 'assets/images/colors/color_orange.png', enName: 'orange',sound: 'orange.mp3'),
    Item(Image: 'assets/images/colors/blue.png', enName: 'blue',sound:'blue.mp3' ),
  ];

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('Colors',
        ),
        backgroundColor: Colors.brown,
      ),
      body: ListView.builder(
        itemCount:colors.length,
        itemBuilder: (Context , index)
        {
          return  ListItem(number: colors[index] , color:Color(0xffEF9235),itemType: 'colors',);
        },
      ),
    );
  }
}

