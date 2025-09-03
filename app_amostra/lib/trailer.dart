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
  Widget build(BuildContext context){

    final ScrollController controle = ScrollController();

=======

  @override
  Widget build(BuildContext context){

>>>>>>> 18df921e4064af0e1545ccb30857772cc8c8abe0
    final jogos = ModalRoute.of(context)!.settings.arguments as Jogo;

    _trailer = VideoPlayerController.asset(jogos.trailer)..initialize().then((_){
      setState(() {});
    });
<<<<<<< HEAD
    
=======

>>>>>>> 18df921e4064af0e1545ccb30857772cc8c8abe0
    return Scaffold(
      appBar: AppBar(
        title: const Text('Trailer dos Jogos'),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 153, 9, 167),
      ),

      body: Center(
<<<<<<< HEAD

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
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  spacing: 2,

                  children: [
                    AspectRatio(
                      aspectRatio: _trailer.value.aspectRatio,
                      child: VideoPlayer(_trailer),
                    ),
              
                    const Padding(padding: EdgeInsets.all(20)),
              
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
                      ],
                    )
                  ],
                ),
              );
            }
          )
        ) 
=======
        child: _trailer.value.isInitialized ?
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AspectRatio(
              aspectRatio: _trailer.value.aspectRatio,
              child: VideoPlayer(_trailer),
            ),

            const Padding(padding: EdgeInsets.all(20)),

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
              ],
            )
          ],
        ) : Text("não começou")
>>>>>>> 18df921e4064af0e1545ccb30857772cc8c8abe0
      ),
    );
  }
}