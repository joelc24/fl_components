import 'package:flutter/material.dart';


import 'package:fl_components/widgets/widgets.dart';

class CardScreen extends StatelessWidget {
   
  const CardScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('CardScreen'),
      ),
      body:ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: const <Widget>[
          CustomCardType1(),
          SizedBox(height: 10),
          CustomCardType2(),
          SizedBox(height: 10),
          CustomCardType2(),
          SizedBox(height: 10),
          CustomCardType2(),
          SizedBox(height: 10),
          CustomCardType2(),
          SizedBox(height: 10),
          CustomCardType2(),
          SizedBox(height: 20),

        ],
      ),
    );
  }
}

