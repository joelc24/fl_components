import 'package:fl_components/widgets/custom_input_field.dart';
import 'package:flutter/material.dart';

class InputsScreen extends StatelessWidget {
   
  const InputsScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Inputs'),
      ),
      body: SingleChildScrollView(
        child: Padding( 
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            children: const <Widget>[

              CustomInputField(labelText: 'Nombre', hintText: 'Nombre del Usuario'),
              SizedBox(height: 30),

              CustomInputField(labelText: 'Apellido', hintText: 'Apellido del Usuario'),
              SizedBox(height: 30),

              CustomInputField(labelText: 'Correo', hintText: 'Correo del Usuario', keyboardType: TextInputType.emailAddress),
              SizedBox(height: 30),

              CustomInputField(labelText: 'Contraseña', hintText: 'Contraseña del Usuario', obscureText: true),
              SizedBox(height: 30),
            ]
          )
        ),
      )
    );
  }
}

