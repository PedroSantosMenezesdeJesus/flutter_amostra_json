# flutter_amostra_json

"Jogo Link" : "https://store.steampowered.com/app/1237320/Sonic_Frontiers/"
"Jogo Link" : "https://store.steampowered.com/app/2215260/Scott_Pilgrim_vs_The_World_The_Game__Complete_Edition/"
"Jogo Link" : "https://store.steampowered.com/app/267530/The_LEGO_Movie__Videogame/"
 "Jogo Link" : "https://www.xbox.com/pt-BR/games/store/kung-fu-panda/9N327F1M4BLL"

 Future<void> launchURL() async {
   final Uri url = Uri.parse(jogos.link);
   if (!await launchUrl(url)) {
        throw Exception('Could not launch $url');
    }}

    
