import 'package:flutter/material.dart';
import 'package:language_learning_app/components/list_item.dart';
import 'package:language_learning_app/models/number.dart';

class AlphabetLettersPage extends StatelessWidget {
  const AlphabetLettersPage({super.key});

  final List<Item> alphabetletter = const [
    Item(Image: 'assets/images/alphabet_letters/a.png', enName: 'a',sound:'a.mp3' ),
    Item(Image: 'assets/images/alphabet_letters/b.png', enName: 'b',sound:'b.mp3' ),
    Item(Image: 'assets/images/alphabet_letters/c.png', enName: 'c',sound:'c.mp3' ),
    Item(Image: 'assets/images/alphabet_letters/d.png', enName: 'd',sound:'d.mp3' ),
    Item(Image: 'assets/images/alphabet_letters/e.png', enName: 'e',sound:'e.mp3' ),
    Item(Image: 'assets/images/alphabet_letters/f.png', enName: 'f',sound:'f.mp3' ),
    Item(Image: 'assets/images/alphabet_letters/g.png', enName: 'g',sound:'g.mp3' ),
    Item(Image: 'assets/images/alphabet_letters/h.png', enName: 'h',sound:'h.mp3' ),
  ];

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('alphabet letters',
        ),
        backgroundColor: Colors.brown,
      ),
      body: ListView.builder(
        itemCount:alphabetletter.length,
        itemBuilder: (Context , index)
        {
          return  ListItem(number: alphabetletter[index] , color:Color(0xffEF9235),itemType: 'alphabet_letters',);
        },
      ),
    );
  }
}

