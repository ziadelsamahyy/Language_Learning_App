import 'package:flutter/material.dart';
import 'package:language_learning_app/components/list_item.dart';
import 'package:language_learning_app/models/number.dart';

class NumbersPage extends StatelessWidget {
  const NumbersPage({super.key});

  final List<Item> numbers = const [
    Item(Image: 'assets/images/numbers/number_one.png', enName: 'one',sound: 'one.mp3'),
    Item(Image: 'assets/images/numbers/number_two.png', enName: 'two',sound: 'number_two_sound.mp3'),
    Item(Image: 'assets/images/numbers/number_three.png', enName: 'three', sound:'number_three_sound.mp3'),
    Item(Image: 'assets/images/numbers/number_four.png', enName: 'four',sound: 'number_four_sound.mp3'),
    Item(Image: 'assets/images/numbers/number_five.png', enName: 'five',sound: 'number_five_sound.mp3'),
    Item(Image: 'assets/images/numbers/number_six.png', enName: 'six',sound: 'number_six_sound.mp3'),
    Item(Image: 'assets/images/numbers/number_seven.png', enName: 'seven',sound: 'number_seven_sound.mp3'),
    Item(Image: 'assets/images/numbers/number_eight.png', enName: 'eight',sound: 'number_eight_sound.mp3'),
    Item(Image: 'assets/images/numbers/number_nine.png', enName: 'nine',sound:'number_nine_sound.mp3' ),
    Item(Image: 'assets/images/numbers/number_ten.png', enName: 'ten',sound: 'number_ten_sound.mp3'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Numbers',
        ),
        backgroundColor: Colors.brown,
      ),
      body: ListView.builder(
        itemCount:numbers.length,
        itemBuilder: (Context , index)
        {
          return  ListItem(number: numbers[index] , color:Color(0xffEF9235),itemType: 'numbers',);
        },
      ),
    );
  }
}

