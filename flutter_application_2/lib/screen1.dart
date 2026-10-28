import 'package:flutter/material.dart';
import 'Screen2.dart';
import 'Screen3.dart';
import 'Screen4.dart';
class Screen1 extends StatelessWidget {
  const Screen1({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Pantalla1',
        style:TextStyle(
          color:Color.fromARGB(255, 94, 25, 134),
        ), 
        ),
        backgroundColor:const Color.fromARGB(255, 12, 134, 8) ,
        ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
           SizedBox(height: 20),
           Text('elige una opcion'),
          SizedBox(height: 20),
          boton('Boton 1',Colors.deepPurple, Screen2(),context), 
          SizedBox(height: 20),
          boton('boton2',Colors.deepOrange,Screen3(),context),
          SizedBox(height: 20),
          boton('boton 3',Colors.green,Screen4(),context),
        ],
        ),
    ),
    );
  }
  Widget boton(String texto,Color color1, StatelessWidget screen,BuildContext context){
    return ElevatedButton(
      onPressed:(){
        //abre otras pantallas de la app 
       
        Navigator.push(
         context,
         MaterialPageRoute(builder: (context) =>  screen),
         );
      },
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
        backgroundColor: color1,
        textStyle: const TextStyle(fontSize:20, fontWeight: FontWeight.bold,
        
        ),
      ),
      child:Text(texto),
    );
  }
} 