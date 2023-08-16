import 'package:flutter/material.dart';
import 'package:language_learning_app/components/list_item.dart';
import 'package:language_learning_app/models/number.dart';

class FamilyMembersPage extends StatelessWidget {
  const FamilyMembersPage({super.key});
  final List<Item> familymembers = const [
    Item(Image: 'assets/images/family_members/family_father.png', enName: 'father',sound:'father.mp3' ),
    Item(Image: 'assets/images/family_members/family_mother.png', enName: 'mother',sound:'mother.mp3' ),
    Item(Image: 'assets/images/family_members/family_son.png', enName: 'son',sound: 'son.mp3'),
    Item(Image: 'assets/images/family_members/family_daughter.png', enName: 'daughter',sound:'daughter.mp3' ),
    Item(Image: 'assets/images/family_members/family_grandfather.png', enName: 'grandfather',sound: 'grandfather.mp3'),
    Item(Image: 'assets/images/family_members/family_grandmother.png', enName: 'grandmother',sound: 'grandmother.mp3'),
    Item(Image: 'assets/images/family_members/family_older_brother.png', enName: 'older brother',sound:'older brother.mp3' ),
    Item(Image: 'assets/images/family_members/family_older_sister.png', enName: 'older sister',sound: 'older sister.mp3'),
    Item(Image: 'assets/images/family_members/family_younger_brother.png', enName: 'younger brother',sound: 'number_nine_sound.mp3'),
    Item(Image: 'assets/images/family_members/family_younger_brother.png', enName: 'younger brother',sound: 'number_ten_sound.mp3'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FamilyMember',
        ),
        backgroundColor: Colors.brown,
      ),
      body: ListView.builder(
        itemCount:familymembers.length,
        itemBuilder: (Context , index)
        {
          return ListItem(number: familymembers[index], color: Colors.orange,itemType: 'family_members',);
        },


      ),
    );
  }
}
