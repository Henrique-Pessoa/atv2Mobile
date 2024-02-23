import 'package:ex3/Nfl.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const SoccerScreen());
}

class SoccerScreen extends StatelessWidget {
  const SoccerScreen({super.key});

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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body:  
      SingleChildScrollView(child:Column(children: [
        Padding(padding: const EdgeInsets.all(20),child:Column(
          children: [
            Image.network("https://i.pinimg.com/originals/c3/f8/b5/c3f8b5d3e9a61af0fcc7c67d5532ad38.png",width: 200,),
            const Text("Nome: Messi",style:TextStyle(fontSize: 30),),
            const Text("Idade: 36  anos",style:TextStyle(fontSize: 20)),
            const Text("Titulo: 8 ",style:TextStyle(fontSize: 20)),
          ],
        )),
        Padding(padding: const EdgeInsets.all(20),child:Column(
          children: [
            Image.network("https://i.pinimg.com/originals/6a/b7/43/6ab7438108b8fe2a1b1d3fd6779f3822.png",width: 200,),
            const Text("Nome: Neymar",style:TextStyle(fontSize: 20),),
            const Text("Idade: 32  anos",style:TextStyle(fontSize: 20),),
            const Text("Titulo: 0 ",style:TextStyle(fontSize: 20),),
          ],
        )),
        Padding(padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network("https://img.vavel.com/1588038503360-1588038526494-1588074305010.png",width: 200,),
            const Text("Nome: Andriano",style:TextStyle(fontSize: 30),),
            const Text("Idade: 42   anos",style:TextStyle(fontSize: 20),),
            const Text("Titulos: 0 ",style:TextStyle(fontSize: 20),),
          ],
          ),
        ),
         ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>  Nfl()));
                  print("ok");
                },
                child: Text("Nfl")),
        ])
    ));
  }
}