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
          CustomCardType2(imageUrl: 'https://images.unsplash.com/photo-1617040619263-41c5a9ca7521?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80',),
          SizedBox(height: 10),
          CustomCardType2(imageUrl: 'https://images.unsplash.com/photo-1531512073830-ba890ca4eba2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=979&q=80',),
          SizedBox(height: 10),
          CustomCardType2(imageUrl: 'https://images.unsplash.com/photo-1601056529539-639905fe7f64?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80',),
          SizedBox(height: 10),
          CustomCardType2(imageUrl: 'https://images.unsplash.com/photo-1560564203-34c933a5645c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80', name: 'Un Hermoso Paisaje'),
          SizedBox(height: 10),
          CustomCardType2(imageUrl: 'https://images.unsplash.com/photo-1519681393784-d120267933ba?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80',),
          SizedBox(height: 20),

        ],
      ),
    );
  }
}

