# flutter_amostra_json

final jogos = ModalRoute.of(context)!.settings.arguments as Jogo;

    final ScrollController controle = ScrollController();

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
                    Image.asset(jogos.galeriaImg[0], width: 200, height: 100),
                    Divider(height: 20, indent: 20, endIndent: 0, color: Colors.black),
                    Image.asset(jogos.galeriaImg[1], width: 200, height: 100),
                    Divider(height: 20, indent: 20, endIndent: 0, color: Colors.black),
                    Image.asset(jogos.galeriaImg[2], width: 200, height: 100),
                    Divider(height: 20, indent: 20, endIndent: 0, color: Colors.black),
                    Image.asset(jogos.galeriaImg[3], width: 200, height: 100),

                  ],
                  
              );
            },
          ),
        )
      )
