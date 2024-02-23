
import 'package:flutter/material.dart';

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
            ElevatedButton(
                onPressed: () {
                  //Navigator.push(
                    //  context,
                      //MaterialPageRoute(
                        //  builder: (context) =>  Screen2()));
                  print("ok");
                },
                child: Text("Tela 2")),
            ],
          ),
        ),
      );
    
  }
}