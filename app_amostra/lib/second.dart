import 'package:flutter/material.dart';
import 'package:app_amostra/jogo.dart';
<<<<<<< HEAD
=======
import 'package:app_amostra/trailer.dart';
>>>>>>> dfce84c452bc55b33a0b17794263a1e3063a145e
import 'package:url_launcher/url_launcher.dart';

void secondpag() {
  runApp(const SecondPag());
}

class SecondPag extends StatelessWidget{
  const SecondPag({super.key});

  @override
  Widget build(BuildContext context) {

    final jogos = ModalRoute.of(context)!.settings.arguments as Jogo;

    final ScrollController controle = ScrollController();

    Future<void> launchURL() async {
   final Uri url = Uri.parse(jogos.link);
   if (!await launchUrl(url)) {
        throw Exception('Could not launch $url');
    }}

<<<<<<< HEAD
    Future<void> trailerUrl () async {
   final Uri url = Uri.parse(jogos.trailer);
   if (!await launchUrl(url)) {
        throw Exception('Could not launch $url');
    }}

=======
>>>>>>> dfce84c452bc55b33a0b17794263a1e3063a145e
    return Scaffold(
      appBar: AppBar(
        title: const Text('Informações dos Jogos'),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 153, 9, 167),
      ),

      body: Center(

        child: Scrollbar(

          trackVisibility: true,
          thumbVisibility: true,
          thickness: 10,
          radius: const Radius.circular(20),
          interactive: true,
          controller: controle,

          child: ListView.builder(

            controller: controle,
            itemCount: 1,
            itemBuilder: (context, index) {

              return Container(
                
                padding: const EdgeInsets.all(10),

                child: Column(

                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.max,

                  children: [

                    Padding(padding: const EdgeInsets.all(10)),

                    Text('Nome: ${jogos.nome}', style: TextStyle(fontSize: 20, color: const Color.fromARGB(255, 145, 10, 166))),
                    Divider(height: 20, indent: 20, endIndent: 0, color: Colors.black),
                    Text('Nome: ${jogos.dataLancamento()}', style: TextStyle(fontSize: 20, color: const Color.fromARGB(255, 145, 10, 166))),
                    Divider(height: 20, indent: 20, endIndent: 0, color: Colors.black),
                    Text('Nome: ${jogos.empresa}', style: TextStyle(fontSize: 20, color: const Color.fromARGB(255, 145, 10, 166))),
                    Divider(height: 20, indent: 20, endIndent: 0, color: Colors.black),
                    Text('Nome: ${jogos.genero}', style: TextStyle(fontSize: 20, color: const Color.fromARGB(255, 145, 10, 166))), 
                    Divider(height: 20, indent: 20, endIndent: 0, color: Colors.black),
                    Text('Nome: ${jogos.sinopse}', style: TextStyle(fontSize: 20, color: const Color.fromARGB(255, 145, 10, 166))),
                    Divider(height: 20, indent: 20, endIndent: 0, color: Colors.black),

                    Image.asset(jogos.galeriaImg[0], width: 300, height: 200),
                    Divider(height: 20, indent: 20, endIndent: 0, color: Colors.black),
                    Image.asset(jogos.galeriaImg[1], width: 300, height: 200),
                    Divider(height: 20, indent: 20, endIndent: 0, color: Colors.black),
                    Image.asset(jogos.galeriaImg[2], width: 300, height: 200),
                    Divider(height: 20, indent: 20, endIndent: 0, color: Colors.black),
                    Image.asset(jogos.galeriaImg[3], width: 300, height: 200),

                    Divider(height: 20, indent: 20, endIndent: 0, color: Colors.black),
                    ElevatedButton(
                      onPressed: launchURL, 
                      style: ButtonStyle(
                        backgroundColor: WidgetStatePropertyAll<Color>(Colors.green),
                        minimumSize: WidgetStatePropertyAll<Size>(Size(100, 100)),
                      ),
                      child: const Text('LINK!', style: TextStyle(fontSize: 20),)
                    ),

                    Divider(height: 20, indent: 20, endIndent: 0, color: Colors.black),
                    ElevatedButton(
<<<<<<< HEAD
                      onPressed: trailerUrl,
=======
                      onPressed: () => Navigator.push(
                        context, 
                        MaterialPageRoute(
                          builder: (context) => const TrailerPag(),
                          settings: RouteSettings(
                            arguments: jogos
                          )
                        )
                      ), 
>>>>>>> dfce84c452bc55b33a0b17794263a1e3063a145e
                      style: ButtonStyle(
                        backgroundColor: WidgetStatePropertyAll<Color>(Colors.green),
                        minimumSize: WidgetStatePropertyAll<Size>(Size(100, 100)),
                      ),
                      child: const Text('Trailer!', style: TextStyle(fontSize: 20),)
                    )
                  ],
                )  
              );
            },
          ),
        )
      )
    );
  }
}