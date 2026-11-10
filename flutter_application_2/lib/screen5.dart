import 'package:flutter/material.dart';

class Screen5 extends StatefulWidget {
  const Screen5({super.key});

  @override
  State<Screen5> createState() => _Screen5State();
}

class _Screen5State extends State<Screen5> {
  bool SwitchValue = false;
  double sliderValue=0.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        title: const Text(
          'Pantalla5',
          style: TextStyle(
            color: Color.fromARGB(255, 220, 217, 231),
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 49, 1, 51),
      ),
      body:Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(child:entradaNombre()),
          entradaSwitch(),
          entradaSlider(),
        ],
      ),
    );
  }
  TextField entradaNombre(){
    return TextField(
      decoration: InputDecoration(
        labelText: 'Nombre',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12)
        ),
      ),
    );
  }
  Row entradaSwitch(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text( '¿Te gusta flutter?',
        style: TextStyle(fontSize: 18),
        ),
        Switch(value: SwitchValue, onChanged: (value){
          setState(() {
            SwitchValue = value;
            print('Valor del Switchvalue:$SwitchValue');
          });

        }),
      ],
    );
  }
  Column entradaSlider(){
    return Column(
      mainAxisAlignment:MainAxisAlignment.center,
      children: [
        Text('Induca que tanto te gusta flutter',
        ),
        Slider(
          min:0.0,
          max:10.0,
          value: sliderValue,
          divisions: 10,
          label: '${sliderValue.round()}',
          onChanged: (value){
            setState(() {
              sliderValue=value;
              print('Valor del slider:$sliderValue');
            });
          }
        ),
      ],
    );
  }
}