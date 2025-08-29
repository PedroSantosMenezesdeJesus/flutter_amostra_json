import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:app_amostra/jogo.dart';
import 'package:app_amostra/second.dart';
import 'dart:convert';

void main() {
  runApp(const MaterialApp(title: 'app', home: MainApp(),));
}

class MainApp extends StatefulWidget{
  const MainApp({super.key});

  @override 
  MainAPP createState() => MainAPP();
}

class MainAPP extends State<MainApp> {

  List<Jogo> jogos = List.empty(growable: true);

  Future<void> readJson() async {
    final String response = await rootBundle.loadString('assets/jogos.json');
     Iterable data = await json.decode(response);
    jogos = List<Jogo>.from(data.map((model)=> Jogo.fromJson(model)));

    setState(() {
      jogos;
    });
  }

  @override 
   initState() {
    super.initState();
     readJson();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(

        appBar: AppBar(
          title: const Text('App Jogos'),
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 153, 9, 167),
        ),

        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            spacing: 2,
            children: <Widget>[
                Expanded(
                child: ListView.builder(
                  itemCount: jogos.length,
                  shrinkWrap: true,
                  padding: const EdgeInsets.all(5),
                  scrollDirection: Axis.vertical,
                  clipBehavior: Clip.antiAlias,
                  itemBuilder: (BuildContext ctx, index)
                  {
                    return Card
                    (
                      child: ListTile(
                        contentPadding: EdgeInsets.all(32), 
                        leading: CircleAvatar(
                          backgroundImage: AssetImage(jogos[index].pathimg), radius: 32,
                        ),
                        title: Text(
                          jogos[index].nome,
                          style: TextStyle(fontSize: 30, color: const Color.fromARGB(255, 153, 9, 167))
                        ),
                        subtitle: Text(jogos[index].empresa),
                        splashColor: const Color.fromARGB(255, 153, 9, 167),
                        hoverColor: const Color.fromARGB(255, 157, 211, 19),
                        onTap: () => Navigator.push(
                          context, 
                          MaterialPageRoute(
                            builder: (context) => const SecondPag(),
                            settings: RouteSettings(
                              arguments: jogos[index]
                            ),
                          ),
                        ),
                      ),
                    );
                  }
                )
               )
             
            ],
          )
        ),
      ),
    );
  }
}
