class Jogo
{
  late String nome;
  late String genero;
  late String empresa;
  late String sinopse;
  late String trailer;
  late DateTime lancamento;
  late List<dynamic> galeriaImg = [];
  Jogo()
  {
    nome = "";
    empresa = "";
    genero = "";
    sinopse = "";
    trailer = "";
    lancamento = DateTime.now();
    galeriaImg = ["", "", ""];
  }

  Jogo.dados(this.nome, this.empresa, this.lancamento, this.sinopse, this.genero, this.trailer, this.galeriaImg);

  Jogo.fromJson(Map<String, dynamic> json):
    nome = json['Jogo Name'] as String,
    empresa = json['Jogo Empressa'] as String,
    lancamento = Jogo.tratarData(json['Jogo Date']),
    sinopse = json['Jogo Sinopse'] as String,
    genero = json['Jogo Genero'] as String,
    trailer = json['Jogo trailer'] as String,
    galeriaImg = json['Jogo Galeria'] as List<dynamic>;

  Map<String, dynamic> toJson() => {
    'Jogo Name': nome,
    'Jogo Empressa': empresa,
    'Jogo Date': lancamento,
    'Jogo Sinopse': sinopse,
    'Jogo Genero': genero,
    'Jogo trailer': trailer,
    'Jogo Galeria': galeriaImg,
  };  


  String dataLancamento()
  {
    final dt = lancamento.toString().split(' ');
    final d = dt[0].split('-').reversed.join('/');
    return d;
  }

  static DateTime tratarData(String dt)
  {
    final d = dt.toString().split('-');
    if (d.length == 1) 
    {
      return DateTime(int.parse(d[0]));
    }
    if (d.length > 1) 
    {
      final ano = d[0].isEmpty?2000:d[0];
      final mes = d[1].isEmpty?01:d[1];
      final dia = d[0].isEmpty?2000:d[2];

      return DateTime(
        int.parse(ano.toString()), 
        int.parse(mes.toString()), 
        int.parse(dia.toString())
      );
    }
    return DateTime.now();
  }
}