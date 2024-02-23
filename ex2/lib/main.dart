
import 'package:flutter/material.dart';
import 'package:ex2/PurchaseScreen.dart';

void main() {
  runApp(MaterialApp(
    home: Telaprincipal(),
  ));
}

class Telaprincipal extends StatefulWidget {
  const Telaprincipal({super.key});

  @override
  State<Telaprincipal> createState() => TelaprincipalState();
}

class TelaprincipalState extends State<Telaprincipal> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
          title: Text("Tela 1"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            Text("Boas vindas",style: TextStyle(color:Colors.red,fontSize: 20),),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>  PurchaseScreen()));
                },
                child: const Text("Purchase screen")),
            ],
          ),
        ),
      );
    
  }
}