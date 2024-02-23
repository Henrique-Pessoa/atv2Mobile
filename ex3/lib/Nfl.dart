import 'package:flutter/material.dart';
import 'package:ex3/Nfl.dart';

void main() {
  runApp(const Nfl());
}

class Nfl extends StatelessWidget {
  const Nfl({super.key});

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
            Image.network("https://a.espncdn.com/i/headshots/nfl/players/full/3139477.png",width: 200,),
            const Text("Nome: patrick mahomes",style:TextStyle(fontSize: 30),),
            const Text("Idade: 28  anos",style:TextStyle(fontSize: 20)),
            const Text("Titulo: 3 ",style:TextStyle(fontSize: 20)),
          ],
        )),
        Padding(padding: const EdgeInsets.all(20),child:Column(
          children: [
            Image.network("https://b.fssta.com/uploads/application/nfl/headshots/21467.png",width: 200,),
            const Text("Nome: Justin Jefferson",style:TextStyle(fontSize: 20),),
            const Text("Idade: 24  anos",style:TextStyle(fontSize: 20),),
            const Text("Titulo: 0 ",style:TextStyle(fontSize: 20),),
          ],
        )),
        Padding(padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network("https://cloud.thefantasyfootballers.com/images/web-profile/headshots/fdnobg21831.png",width: 200,),
            const Text("Nome: Jalen Hurts",style:TextStyle(fontSize: 30),),
            const Text("Idade: 25 anos",style:TextStyle(fontSize: 20),),
            const Text("Titulos: 0 ",style:TextStyle(fontSize: 20),),
          ],
          ),
        ),
         ElevatedButton(
                onPressed: () {
                  print("ok");
                },
                child: Text("Futebol")),
        ])
    ));
  }
}