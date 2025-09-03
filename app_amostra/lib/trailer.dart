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

  @override
  Widget build(BuildContext context){

    final jogos = ModalRoute.of(context)!.settings.arguments as Jogo;

    _trailer = VideoPlayerController.asset(jogos.trailer)..initialize().then((_){
      setState(() {});
    });

    return Scaffold(
      appBar: AppBar(
        title: const Text('Trailer dos Jogos'),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 153, 9, 167),
      ),

      body: Center(
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
      ),
    );
  }
}