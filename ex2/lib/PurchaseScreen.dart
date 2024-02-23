import 'package:flutter/material.dart';

void main() {
  runApp(const PurchaseScreen());
}

class PurchaseScreen extends StatelessWidget {
  const PurchaseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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
  var _appleAmount = 0;
  var _grapAmount  = 0;
  var _watermelonAmount = 0;
  var _total = 0;
  void _incrementApple() {
    setState(() {
      _appleAmount++;
      _total +=10;
    });
  }
  void _incrementGrap() {
    setState(() {
      _grapAmount++;
      _total +=20;
    });
  }
    void _incrementWatermelon() {
    setState(() {
      _watermelonAmount++;
      _total +=50;
    });
  }
  void _decreaseApple(){
     setState(() {
      if(_appleAmount > 0){
        _appleAmount--;
        if(_total > 0){
          _total -=10;
        }
      }
    });
  }
  void _decreaseGrap(){
     setState(() {
      if(_grapAmount > 0){
        _grapAmount--;
          if(_total > 0){
          _total -=20;
        }
      }
    });
  }
  void _decreaseWatermelon(){
     setState(() {
      if(_watermelonAmount > 0){
        _watermelonAmount--;
        if(_total > 0){
          _total -=50;
        }
      }
    });
  }
  void _calculateTotal(){
    setState(() {
      _total = _appleAmount *10 + _grapAmount *15 + _watermelonAmount * 40;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Column(children: [
        Padding(
          padding: const EdgeInsets.all(10),
          child: 
          Container(
            color: Colors.red,
            width:1000,
            height: 140,
            child: Column(children: [
              const Text("Maça",style: TextStyle(fontSize: 30,),),
              Text("$_appleAmount",style: const TextStyle(fontSize: 20,),),
              Row(children:[
                Padding(
               padding: const EdgeInsets.only(left: 50),
                child:
              ElevatedButton(onPressed: (){_incrementApple();}, child: const Text("Adicionar")),
                ),
                Padding(
               padding: const EdgeInsets.all(10),
                child:
              ElevatedButton(onPressed: (){_decreaseApple();}, child: const Text("Remover")),
              )])
            ],),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10),
          child: 
          Container(
            color: Colors.purple,
            width:1000,
            height: 140,
            child: Column(children: [
              const Text("Uva",style: TextStyle(fontSize: 30,)),
              Text("$_grapAmount",style: const TextStyle(fontSize: 20,)),
              Row(children:[
                Padding(
               padding: const EdgeInsets.only(left: 50),
                child:
              ElevatedButton(onPressed: (){_incrementGrap();}, child: const Text("Adicionar")),
                ),
                Padding(
               padding: const EdgeInsets.all(10),
                child:
              ElevatedButton(onPressed: (){_decreaseGrap();}, child: const Text("Remover")),
              )])
            ],),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10),
          child: 
          Container(
            color: Colors.green,
            width:1000,
            height: 140,
            child: Column(children: [
              const Text("Melancia",style: TextStyle(fontSize: 30,),),
              Text("$_watermelonAmount",style: const TextStyle(fontSize: 20,)),
              Row(children:[
              Padding(
               padding: const EdgeInsets.only(left: 50),
                child:
              ElevatedButton(onPressed: (){_incrementWatermelon();}, child: const Text("Adicionar")),
                ),
                Padding(
               padding: const EdgeInsets.all(10),
                child:
              ElevatedButton(onPressed: (){_decreaseWatermelon();}, child: const Text("Remover")),
              )])
            ],),
          ),
        ),
        Padding(padding:const EdgeInsets.only(top:20),child: Text("Total: $_total reais",style: const TextStyle(fontSize: 25,)))
      ]),
    );
  }
}