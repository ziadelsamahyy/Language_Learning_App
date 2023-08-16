import 'package:flutter/material.dart';
import 'package:language_learning_app/screens/alphabet_letters_page.dart';
import 'package:language_learning_app/screens/numbers_Page.dart';
import 'package:language_learning_app/screens/colors_page.dart';
import 'package:language_learning_app/screens/family_members_page.dart';

import '../components/category_item.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Center(child: Text("TokoApp")),
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: GridView(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, mainAxisSpacing: 10, crossAxisSpacing: 10),
          children:
          [
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => NumbersPage()));
              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.network(
                      'https://media.istockphoto.com/id/1282020006/vector/funny-children-font-with-white-numbers-in-color-circle-colorful-vector-illustration-isolated.jpg?s=612x612&w=0&k=20&c=VEdPJdPfDCbF1HgED4p4DmnOZpBSg_hwu6Q-RkYuvg8=',
                      height: 120,
                      width: 190,
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Numbers',
                      style: TextStyle(
                        fontSize: 27,
                        color: Colors.blue,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => FamilyMembersPage()));
              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.network(
                      'https://cdn.firstcry.com/education/2022/10/28101610/Family-Members-Names-In-English-For-Kids.jpg',
                      height: 120,
                      width: 190,
                    ),
                    SizedBox(height: 10),
                    Text(
                      'FamilyMember',
                      style: TextStyle(
                        fontSize: 24,
                        color: Colors.blue,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ColorsPage()));
              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.network(
                      'https://static.vecteezy.com/system/resources/previews/021/635/665/original/learning-basic-colors-for-preschool-kindergarten-kids-with-their-names-set-of-colored-spots-on-the-white-background-educational-set-for-children-and-toddlers-vector.jpg',
                      height: 120,
                      width: 190,
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Colors',
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.blue,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return AlphabetLettersPage();
                }));
              },
              child: Container(
                decoration:BoxDecoration(borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:
                  [
                    Image.asset('assets/images/alphabet_letters/alphabet_letters.png',
                    cacheHeight: 116,
                      cacheWidth: 190,
                    ),
                    SizedBox(height: 32),
                    Text('Alphabet Letters',
                      style: TextStyle(
                        fontSize: 22,
                        color:Colors.blue,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Column(
//   children:
//   [
//     Padding(
//         padding: EdgeInsets.all(5)),
//    Category(
//      color: Colors.blue,
//      text: 'Learn Numbers',
//      noTap:()
//      {
//        Navigator.push(context, MaterialPageRoute(builder: (context){
//          return NumbersPage();
//        }));
//      },
//    ),
//    SizedBox(
//      height: 10,
//    ),
//    Category(
//      color: Colors.blue,
//      text: 'Family Member',
//      noTap: (){
//        Navigator.push(context, MaterialPageRoute(builder: (context){
//          return FamilyMembersPage();
//        }));
//      },
//
//
//    ),
//     SizedBox(
//       height: 10,
//     ),
//    Category(
//      color: Colors.blue,
//      text: 'Learn Colors',
//    ),
//     SizedBox(
//       height: 10,
//     ),
//    Category(
//      color: Colors.blue,
//      text: 'Phrases',
//    ),
//
//   ],
// ),
