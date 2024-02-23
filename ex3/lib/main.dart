import 'package:flutter/material.dart';
import 'package:ex3/SoccerScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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
            Image.network("https://i.pinimg.com/originals/22/21/55/222155f5a393706ffebbd07c1754c992.jpg",width: 200,),
            const Text("Nome: LeBron James",style:TextStyle(fontSize: 30),),
            const Text("Idade: 39 anos",style:TextStyle(fontSize: 20)),
            const Text("Titulo: 4 ",style:TextStyle(fontSize: 20)),
          ],
        )),
        Padding(padding: const EdgeInsets.all(20),child:Column(
          children: [
            Image.network("https://cdn.nba.com/headshots/nba/latest/1040x760/201939.png",width: 200,),
            const Text("Nome: stefan carry",style:TextStyle(fontSize: 20),),
            const Text("Idade: 35 anos",style:TextStyle(fontSize: 20),),
            const Text("Titulo: 2 ",style:TextStyle(fontSize: 20),),
          ],
        )),
        Padding(padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network("https://w7.pngwing.com/pngs/847/479/png-transparent-kobe-bryant-nba-kobe-bryant-file-sport-sticker-jersey-thumbnail.png",width: 200,),
            const Text("Nome: Kobe Bryant",style:TextStyle(fontSize: 30),),
            const Text("Idade: 41  anos",style:TextStyle(fontSize: 20),),
            const Text("Titulos: 5 ",style:TextStyle(fontSize: 20),),
          ],
          ),
        ),
         ElevatedButton(
                onPressed: () {
                Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>  SoccerScreen()));
                  print("ok");
                },
                child: Text("Futebol")),
        ])
    ));
  }
}