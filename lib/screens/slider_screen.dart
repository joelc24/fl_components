import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
   
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {

  double _sliderValue = 100;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Slider and Checks'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Slider.adaptive(
              min: 50,
              max: 400,
              activeColor: AppTheme.primary,
              value: _sliderValue,
              onChanged:(value){
                _sliderValue = value;
                setState(() {});
              } ,
            ),
      
             Image(image: const NetworkImage('https://cdn.pixabay.com/photo/2020/07/06/17/51/batman-5377804_960_720.png'),
            fit: BoxFit.contain,
            width: _sliderValue,
          ),
          const SizedBox(height: 50),

          ],
        ),
      ),
    );
  }
}