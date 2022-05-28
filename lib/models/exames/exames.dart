class Exames {
  late String id;
  String cpf;
  String nomePaciente;
  String observacao;
  bool hemograma = false;
  bool contagemPlaquetas = false;
  bool pesquisaHemoparasitas = false;
  bool culturaBacteriologica = false;
  bool urinaI = false;
  bool citologia = false;
  bool perfilRenal = false;
  bool perfilHepatico = false;
  bool culturaOuvido = false;
  bool pesquisaEctoparasitas = false;

  Exames(
      {required this.cpf,
      required this.nomePaciente,
      required this.observacao,
      required this.hemograma,
      required this.contagemPlaquetas,
      required this.pesquisaHemoparasitas,
      required this.culturaBacteriologica,
      required this.urinaI,
      required this.citologia,
      required this.perfilRenal,
      required this.perfilHepatico,
      required this.culturaOuvido,
      required this.pesquisaEctoparasitas});

  Exames.fromMap(Map<String, dynamic> map)
      : cpf = map['cpf'],
        nomePaciente = map['nomePaciente'],
        observacao = map['observacao'],
        hemograma = map['hemograma'],
        contagemPlaquetas = map['contagemPlaquetas'],
        pesquisaHemoparasitas = map['pesquisaHemoparasitas'],
        culturaBacteriologica = map['culturaBacteriologica'],
        urinaI = map['urinaI'],
        citologia = map['citologia'],
        perfilRenal = map['perfilRenal'],
        perfilHepatico = map['perfilHepatico'],
        culturaOuvido = map['culturaOuvido'],
        pesquisaEctoparasitas = map['pesquisaEctoparasitas'];

  Map<String, dynamic> toMap() {
    return {
      'cpf': cpf,
      'nomePaciente': nomePaciente,
      'observacao': observacao,
      'hemograma': hemograma,
      'contagemPlaquetas': contagemPlaquetas,
      'pesquisaHemoparasitas': pesquisaHemoparasitas,
      'culturaBacteriologica': culturaBacteriologica,
      'urinaI': urinaI,
      'citologia': citologia,
      'perfilRenal': perfilRenal,
      'perfilHepatico': perfilHepatico,
      'culturaOuvido': culturaOuvido,
      'pesquisaEctoparasitas': pesquisaEctoparasitas
    };
  }
}
