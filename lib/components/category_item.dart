import 'package:flutter/material.dart';

class Category extends StatelessWidget {
   Category({ this.text , this.color,this.noTap });

  String? text;
  Color? color;
  Function()? noTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: noTap,
      child: Container(
        padding: EdgeInsets.only(left: 25,),
        alignment:Alignment.centerLeft ,
        width: double.infinity,
        height: 65,
        color: color,
        child: Text(text!,
          style:TextStyle(
            fontSize: 20  ,
            color:Colors.white,
          ),
        ),
      ),
    );
  }
}
