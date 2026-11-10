import 'package:flutter/material.dart';

class Screen4 extends StatelessWidget {
  const Screen4({super.key});

  final Map<String, String> flowers= const{
    'lirios':'assets/imgs/lirio.jpg',
    'Girasol':'assets/imgs/girasol.jpg',
    'Orquideas':'assets/imgs/orquideas.jpg',


  };
  final Map<String, String> mascotas= const{
     'loro':'assets/imgs/loro.jpg',
     'Perro':'assets/imgs/perro.jpg',
     'caballo':'assets/imgs/caballo.jpg',

  };
  
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:const Text('Pantalla 4 ')),

      backgroundColor:const Color.fromARGB(255, 230, 205, 220),
      body: ListView(
        children: [
          ...flowers.entries.map((flor){
            return crearTile(
              flor.key, 
              flor.value,
               Colors.purple,
               Colors.white);
          }),
        
          
          
          Divider(),
          ...mascotas.entries.map((mascota){
            return crearTile_mas(
              context,
              mascota.key,
              mascota.value,
              Colors.green,
              Colors.white
            );
            }
            ),
          
        ],

      ),

    );
    
  }
  Widget crearTile( nombre,String imagen,Color colorTile, Color colorText){
    final listTile = ListTile(
            leading: Image.asset(
              imagen,
              width:50,
              height:50,
              fit:BoxFit.cover,
            ),

            title: Text(nombre),
            subtitle: Text('flores'),
            tileColor:colorTile,
            textColor:colorText,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
             );
    final espacio=SizedBox(height: 6,);
    return Column(
      children: [
        listTile,
        espacio,
      ],
    );
  }
   Widget crearTile_mas(BuildContext context,String nombre,String imagen,Color colorTile, Color colorText){
    final listTile = ListTile(
            leading: Image.asset(
              imagen,
              width:50,
              height:50,
              fit:BoxFit.cover,
            ),

            title: Text(nombre),
            subtitle: Text('Mascotas'),
            tileColor:colorTile,
            textColor:colorText,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            onTap: (){
              showDialog(
                context: context,
                builder: (BuildContext dialogContext){
                   return AlertDialog(
                    title:Text(nombre),
                    content:Image.asset(
                      imagen,
                      width:250,
                      height:250,
                      fit:BoxFit.contain,
                    ),
                    actions:[
                      TextButton(
                        onPressed:(){
                          Navigator.pop(dialogContext);
                        },
                        child: const Text('Cerrar')
                      ),
                    ],
                  );
                  
                },
              );
            },
             );
            
    final espacio=SizedBox(height: 6,);
  
    return Column(
      children: [
        listTile,
        espacio,
      ],
    );
  }
  
}