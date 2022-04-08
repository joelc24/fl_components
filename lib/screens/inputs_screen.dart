import 'package:fl_components/widgets/custom_input_field.dart';
import 'package:flutter/material.dart';

class InputsScreen extends StatelessWidget {
   
  const InputsScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {

    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();

    final Map<String, String> formValues = {
      'primer_nombre': 'Joel',
      'segundo_nombre': 'David',
      'Email': 'correo@correo.com',
      'Contraseña': '123456',
      'Role': 'Admin',
    };

    return Scaffold(
      appBar: AppBar(
        title: const Text('Inputs'),
      ),
      body: SingleChildScrollView(
        child: Padding( 
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Form(
            key: myFormKey,
            child: Column(
              children: <Widget>[
          
                CustomInputField(labelText: 'Nombre', hintText: 'Nombre del Usuario', formProperty: 'primer_nombre', formValues: formValues,),
                const SizedBox(height: 30),
          
                CustomInputField(labelText: 'Apellido', hintText: 'Apellido del Usuario', formProperty: 'segundo_nombre', formValues: formValues,),
                const SizedBox(height: 30),
          
                CustomInputField(labelText: 'Correo', hintText: 'Correo del Usuario', keyboardType: TextInputType.emailAddress, formProperty: 'Email', formValues: formValues,),
                const SizedBox(height: 30),
          
                CustomInputField(labelText: 'Contraseña', hintText: 'Contraseña del Usuario', obscureText: true, formProperty: 'Contraseña', formValues: formValues,),
                const SizedBox(height: 30),
          
                ElevatedButton(
                  child: const SizedBox(
                    width: double.infinity,
                    child: Center(child: Text('Enviar')),
                  ),
                  onPressed: (){
                    FocusScope.of(context).requestFocus(FocusNode());
                    if( !myFormKey.currentState!.validate()){
                      print('Formulario no valido');
                      return;
                    }

                    print(formValues);
                  },
                ),
              ]
            ),
          )
        ),
      )
    );
  }
}

