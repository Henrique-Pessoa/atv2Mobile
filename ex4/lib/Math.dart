import 'package:flutter/material.dart';
import 'package:ex4/Philosophy.dart';

void main() {
  runApp(const Math());
}

class Math extends StatelessWidget {
  const Math({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final TextEditingController _name = TextEditingController();
  final TextEditingController _nota1 = TextEditingController();
  final TextEditingController _nota2 = TextEditingController();
  final TextEditingController _nota3 = TextEditingController();
  var _median = 0.0;
  var _pass = "";
  Color textColor = Colors.red;
  
  
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          children: [
            Text("Math"),
            Padding(
              padding: const EdgeInsets.all(2),
              child: TextField(
                keyboardType: TextInputType.number,
                decoration:
                    const InputDecoration(labelText: "Digite seu nome"),
                style: const TextStyle(fontSize: 20),
                controller: _name,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(2),
              child: TextField(
                keyboardType: TextInputType.number,
                decoration:
                    const InputDecoration(labelText: "Nota1: "),
                style: const TextStyle(fontSize: 20),
                controller: _nota1,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(2),
              child: TextField(
                keyboardType: TextInputType.number,
                decoration:
                    const InputDecoration(labelText: "Nota2: "),
                style: const TextStyle(fontSize: 20),
                controller: _nota2,
            )),
              Padding(
              padding: const EdgeInsets.all(2),
              child: TextField(
                keyboardType: TextInputType.number,
                decoration:
                    const InputDecoration(labelText: "Nota3: "),
                style: const TextStyle(fontSize: 20),
                controller: _nota3,
              ),
            ),
            Row(children: [
              Padding(padding: EdgeInsets.only(left: 80,right: 50),child:ElevatedButton(
                onPressed: () {
                  setState(() {
                    _median = (int.parse(_nota1.text) + int.parse(_nota2.text) + int.parse(_nota3.text)) /3;
                    if(_median < 7){
                        _pass = "Reprovado";
                        textColor = Colors.red;
                    }else{
                      _pass = "Aprovado";
                      textColor = Colors.green;
                    }
                  });
                },
                child: const Text("Enviar")), ),
                ElevatedButton(
                  child: Text("Philosophy"),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>  Philosophy()));
                },)
            ],),
            Text("Media do aluno $_median"),
            Text(_pass,style: TextStyle(color:textColor,)),
          ],
        ),
      ),
    );
  }
}