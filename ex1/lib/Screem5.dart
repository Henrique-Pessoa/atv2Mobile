import 'package:flutter/material.dart';

class Screen5 extends StatefulWidget {
  const Screen5({super.key});

  @override
  State<Screen5> createState() => _Screen5State();
}

class _Screen5State extends State<Screen5> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tela 5"),
      ),
     body: Column(
      children: [
        Text("Senai",style: TextStyle(fontSize: 50,color: Colors.red),)

        
      ],
     ),

      );
    
  }}