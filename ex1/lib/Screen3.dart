import 'package:flutter/material.dart';

class Screen3 extends StatefulWidget {
  const Screen3({super.key});

  @override
  State<Screen3> createState() => _Screen3State();
}

class _Screen3State extends State<Screen3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tela 3"),
      ),
     body: Column(
      children: [
        Text("Senai",style: TextStyle(fontSize: 50,color: Colors.red),)

        
      ],
     ),

      );
    
  }}