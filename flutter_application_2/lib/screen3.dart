import 'package:flutter/material.dart';

class Screen3 extends StatelessWidget {
  const Screen3({super.key});

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
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
       children: <Widget>[
        colocarImagen(1),
        SizedBox(width: 5),
        colocarImagen(2),
        SizedBox(width: 5),
        colocarImagen(3),
        SizedBox(width: 5),
        ],
    ),
    ),
    );
   }
   


Widget colocarImagen(int numImagen){
  String imagen = '';
  switch(numImagen){
    case 1: imagen ='assets/imgs/ft1.jpg';
    break;
    case 2: imagen = 'assets/imgs/ft2.jpg';
    break;
    case 3: imagen = 'assets/imgs/ft3.jpg';
  }
  return Image.asset(
    imagen,
    width: 100,
    height: 180,
    fit : BoxFit.cover
  );
}
}