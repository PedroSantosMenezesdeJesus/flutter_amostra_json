import 'package:app_amostra/jogo.dart';
import 'package:video_player/video_player.dart';
import 'package:flutter/material.dart';

class TrailerPag extends StatefulWidget{
  const TrailerPag({super.key});

  @override  
  State<TrailerPag> createState() => _TrailerPagState();
}

class _TrailerPagState extends State<TrailerPag>{

  late VideoPlayerController _trailer;
<<<<<<< HEAD
 
  @override 
   void initState() {
    super.initState();
  }

=======
  
>>>>>>> b4f3c95779843568ad23a709a6d47f85cc4af423
  @override
  Widget build(BuildContext context){

    final ScrollController controle = ScrollController();

<<<<<<< HEAD
    final jogos = ModalRoute.of(context)!.settings.arguments as Jogo;    
=======
    final jogos = ModalRoute.of(context)!.settings.arguments as Jogo;
>>>>>>> b4f3c95779843568ad23a709a6d47f85cc4af423

    _trailer = VideoPlayerController.asset(jogos.trailer)..initialize().then((_){
      _trailer.play();
        setState(() {});
    });
<<<<<<< HEAD
  
=======

    
>>>>>>> b4f3c95779843568ad23a709a6d47f85cc4af423
    return Scaffold(
      appBar: AppBar(
        title: const Text('Trailer dos Jogos'),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 153, 9, 167),
      ),

      body: Center(

        child: Scrollbar(
<<<<<<< HEAD
          trackVisibility: true,
          thumbVisibility: true,
          thickness: 10,
          radius: const Radius.circular(20),
          interactive: true,
          controller: controle,

=======

          trackVisibility: true,
          thumbVisibility: true,
          thickness: 10,
          radius: const Radius.circular(20),
          interactive: true,
          controller: controle,
>>>>>>> b4f3c95779843568ad23a709a6d47f85cc4af423
          child: ListView.builder(

            controller: controle,
            itemCount: 1,
            itemBuilder: (context, index) {

              return Container(
<<<<<<< HEAD
                padding: const EdgeInsets.all(5),
              
=======
                padding: const EdgeInsets.all(10),
                
>>>>>>> b4f3c95779843568ad23a709a6d47f85cc4af423
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  spacing: 2,
<<<<<<< HEAD
                  
=======

>>>>>>> b4f3c95779843568ad23a709a6d47f85cc4af423
                  children: [
                    AspectRatio(
                      aspectRatio: _trailer.value.aspectRatio,
                      child: VideoPlayer(_trailer),
                    ),
<<<<<<< HEAD
                
                    const Padding(padding: EdgeInsets.all(2)),
                
=======
              
                    const Padding(padding: EdgeInsets.all(20)),
              
>>>>>>> b4f3c95779843568ad23a709a6d47f85cc4af423
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            _trailer.pause();
                          }, 
                          style: ButtonStyle(
                            backgroundColor: WidgetStatePropertyAll<Color>(Colors.blue),
                            minimumSize: WidgetStatePropertyAll<Size>(Size(80, 80)),
                            shape: WidgetStatePropertyAll(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(100)
                              )
                            )
                          ),
                          child: const Icon(Icons.pause)
                        ),
                
                        const Padding(padding: EdgeInsets.all(2)),
                
                        ElevatedButton(
                          onPressed: () {
                            _trailer.play();
                          }, 
                          style: ButtonStyle(
                            backgroundColor: WidgetStatePropertyAll<Color>(Colors.red),
                            minimumSize: WidgetStatePropertyAll<Size>(Size(80, 80)),
                            shape: WidgetStatePropertyAll(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(100)
                              )
                            )
                          ), 
                          child: const Icon(Icons.play_arrow)
                        )
<<<<<<< HEAD

=======
>>>>>>> b4f3c95779843568ad23a709a6d47f85cc4af423
                      ],
                    )
                  ],
                ),
              );
            }
          )
        ) 
      ),
    );
  }
}
