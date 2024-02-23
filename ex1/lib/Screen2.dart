import 'package:flutter/material.dart';

class Screen2 extends StatefulWidget {
  const Screen2({super.key});

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tela 2"),
      ),
     body: Column(
      children: [
        Text("Senai",style: TextStyle(fontSize: 50,color: Colors.red),)

        
      ],
     ),

      );
    
  }}