import 'package:flutter/material.dart';

class Screen4 extends StatelessWidget {
  const Screen4({super.key});
  final flores=const['Lirios','Girasol','Hortensias','Peonias'];
  final pets=const['Paro','Perro','Tigre','Foca'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:const Text('Pantalla 4 ')),

      backgroundColor:const Color.fromARGB(255, 230, 205, 220),
      body: ListView(
        children: [
          ...flores
          .map(
            (flor)=>ListTile(
            leading: const Icon(Icons.star_border_purple500_outlined),
            title: Text(flor),

            trailing: const Icon(Icons.arrow_forward_ios_outlined),
             ),
             
            ),
          Divider(),
          ...pets
          .map(
            (pet)=>ListTile(
            leading: const Icon(Icons.pets),
            title: Text(pet),

            trailing: const Icon(Icons.pets),
             ),
             
            ),
          
        ],

      ),

    );
    
  }
}