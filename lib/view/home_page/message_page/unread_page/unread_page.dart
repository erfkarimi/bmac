import 'package:flutter/material.dart';

class UnreadPage extends StatelessWidget{
  const UnreadPage({super.key});

  @override 
  Widget build(context){
    return const Padding(
      padding: EdgeInsets.all(20),
      child: Align(
        alignment: Alignment.topCenter,
        child: Text(
          "You're all caught up",
          style: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.bold
          ),
          ),
      ),
    );
  }
}