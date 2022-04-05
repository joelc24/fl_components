import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
   
  const AlertScreen({Key? key}) : super(key: key);

  void displayDialog(BuildContext context){
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (context) {
        return AlertDialog(
          elevation: 5,
          title: const Text('Alerta'),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18),
          ),
          content:Column(
            mainAxisSize: MainAxisSize.min,
            children: const <Widget>[
              Text('Este es un mensaje de alerta'),
              SizedBox(height: 20),
              FlutterLogo(size: 100),
            ],
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('Cancelar'),
              onPressed: () => Navigator.of(context).pop(),
            ),
            TextButton(
              child: const Text('Aceptar'),
              onPressed: () => Navigator.of(context).pop(),
            ),
          ],
        );
      },
    );
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
         child: ElevatedButton(
           /* style: ElevatedButton.styleFrom(
             primary: Colors.indigo,
             shape: const StadiumBorder(),
             elevation: 0,
           ), */
           onPressed: ()=> displayDialog(context),
            child: const Padding(
              padding:  EdgeInsets.symmetric(horizontal: 20, vertical:  15),
              child:  Text('Mostrar Alerta', style: TextStyle(fontSize: 20),),
            ),
          )
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.close),
        onPressed: () => Navigator.of(context).pop(),
      ),
    );
  }
}