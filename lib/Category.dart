import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Category extends StatelessWidget{
  final   String data;
  final   Color color;
  final   Function() onTap; //Function == VoidCallback
  Category(
      {
        required this.data,
        required this.color,
        required this.onTap,
      }
      );
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.centerLeft,
        width: double.infinity,
        height: 60,
        color: color,
        child: Padding(
          padding: const EdgeInsets.only(left: 15),
          child: Text(data,
            style: const TextStyle(
                color: Colors.white,
                fontSize: 20
            ),
          ),
        ),
      ),
    );
  }

}