class Consulta {
  late String cpf;
  String nomePaciente;
  String peso;
  String anamneseGeral;
  String sistemaRespiratorio;
  String sistemaCardiovascular;
  String sistemaDigestorio;
  String sistemaUrinario;
  String sistemaReprodutor;
  String sistemaLocomotor;
  String sistemaNeurologico;
  String peleAnexos;
  String olhos;
  String postura;
  String nivelConsciencia;
  String escoreCorporal;
  String TR;
  String FR;
  String TPC;
  String pulso;
  String hidratacao;
  String linfonodosSub;
  String linfonodosPreescapulares;
  String linfonodosPopliteos;
  String linfonodosInguinais;
  String mucosaOcular;
  String mucosaOral;
  String mucosaPenianaeVulvar;
  String mucosaAnal;

  Consulta(
      
       this.cpf,
       this.nomePaciente,
       this.peso,
       this.anamneseGeral,
       this.sistemaRespiratorio,
       this.sistemaCardiovascular,
       this.sistemaDigestorio,
       this.sistemaUrinario,
       this.sistemaReprodutor,
       this.sistemaLocomotor,
       this.sistemaNeurologico,
       this.peleAnexos,
      this.olhos,
       this.postura,
       this.nivelConsciencia,
       this.escoreCorporal,
       this.TR,
       this.FR,
       this.TPC,
       this.pulso,
       this.hidratacao,
       this.linfonodosSub,
       this.linfonodosPreescapulares,
      this.linfonodosPopliteos,
       this.linfonodosInguinais,
       this.mucosaOcular,
       this.mucosaOral,
       this.mucosaPenianaeVulvar,
       this.mucosaAnal);

  Consulta.fromMap(Map<String, dynamic> map)
      : cpf = map['cpf'],
        nomePaciente = map['nomePaciente'],
        peso = map['peso'],
        anamneseGeral = map['anamneseGeral'],
        sistemaRespiratorio = map['sistemaRespiratorio'],
        sistemaCardiovascular = map['sistemaCardiovascular'],
        sistemaDigestorio = map['sistemaDigestorio'],
        sistemaUrinario = map['sistemaUrinario'],
        sistemaReprodutor = map['sistemaReprodutor'],
        sistemaLocomotor = map['sistemaLocomotor'],
        sistemaNeurologico = map['sistemaNeurologico'],
        peleAnexos = map['peleAnexos'],
        olhos = map['olhos'],
        postura = map['postura'],
        nivelConsciencia = map['nivelConsciencia'],
        escoreCorporal = map['escoreCorporal'],
        TR = map['TR'],
        FR = map['FR'],
        TPC = map['TPC'],
        pulso = map['pulso'],
        hidratacao = map['hidratacao'],
        linfonodosSub = map['linfonodosSub'],
        linfonodosPreescapulares = map['linfonodosPreescapulares'],
        linfonodosPopliteos = map['linfonodosPopliteos'],
        linfonodosInguinais = map['linfonodosInguinais'],
        mucosaOcular = map['mucosaOcular'],
        mucosaOral = map['mucosaOral'],
        mucosaPenianaeVulvar = map['mucosaPenianaeVulvar'],
        mucosaAnal = map['mucosaAnal'];

  Map<String, dynamic> toMap() {
    return {
      'cpf': cpf,
      'nomePaciente': nomePaciente,
      'peso': peso,
      'anamneseGeral': anamneseGeral,
      'sistemaRespiratório': sistemaRespiratorio,
      'sistemaCardiovascular': sistemaCardiovascular,
      'sistemaDigestorio': sistemaDigestorio,
      'sistemaUrinario': sistemaUrinario,
      'sistemaReprodutor': sistemaReprodutor,
      'sistemaLocomotor': sistemaLocomotor,
      'sistemaNeurologico': sistemaNeurologico,
      'peleAnexos': peleAnexos,
      'olhos': olhos,
      'postura': postura,
      'nivelConsciencia': nivelConsciencia,
      'escoreCorporal': escoreCorporal,
      'TR': TR,
      'FR': FR,
      'TPC': TPC,
      'pulso': pulso,
      'hidratacao': hidratacao,
      'linfonodosSub': linfonodosSub,
      'linfonodosPreescapulares': linfonodosPreescapulares,
      'linfonodosPopliteos': linfonodosPopliteos,
      'linfonodosInguinais': linfonodosInguinais,
      'mucosaOcular': mucosaOcular,
      'mucosaOral': mucosaOral,
      'mucosaPenianaeVulvar': mucosaPenianaeVulvar,
      'mucosaAnal': mucosaAnal
    };
  }
}
