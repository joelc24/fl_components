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
            children: <Widget>[

              TextFormField(
                autofocus: true,
                initialValue: '',
                textCapitalization: TextCapitalization.words,
                onChanged: ( value ){
                  print('value $value');
                },
                validator: (value){
                  if(value == null){
                    return 'Este Campo es obligatorio';
                  }
                  return value.length < 3 ? 'Este Campo debe tener al menos 3 caracteres' : null;
                },
                autovalidateMode: AutovalidateMode.onUserInteraction,
                decoration: const InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.indigo, width: 2),
                  ),
                  hintText: 'Nombre del Usuario',
                  labelText: 'Nombre',
                  helperText: 'Solo letras',
                  counterText: '3 caacteres',
                  /* prefixIcon: Icon(Icons.person), */
                  suffixIcon: Icon(Icons.group_add_outlined),
                  icon: Icon(Icons.assignment_ind_outlined),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                    ),
                  )
              ),
              )
            ]
          )
        ),
      )
    );
  }
}