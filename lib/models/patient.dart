class Patient {
  late String id;
  String cpf;
  String nome_tutor;
  String nome_paciente;
  String idade;
  String sexo;
  String raca;

  Patient(
      {required this.cpf,
      required this.nome_tutor,
      required this.nome_paciente,
      required this.idade,
      required this.sexo,
      required this.raca});

//metodo para converter formato json em objetos
  Patient.fromMap(Map<String, dynamic> map)
      : cpf = map['cpf'],
        nome_tutor = map['nome_tutor'],
        nome_paciente = map['nome_paciente'],
        idade = map['idade'],
        sexo = map['sexo'],
        raca = map['raca'];

  Patient.fromJson(Map<String, Object?> json)
      : this(
          cpf: json['cpf']! as String,
          nome_tutor: json['nome_tutor']! as String,
          nome_paciente: json['nome_paciente']! as String,
          idade: json['idade']! as String,
          sexo: json['sexo']! as String,
          raca: json['raca']! as String,
        );

// permite enviar informações ao firebase
  Map<String, dynamic> toMap() {
    return {
      'cpf': cpf,
      'nome_tutor': nome_tutor,
      'nome_paciente': nome_paciente,
      'idade': idade,
      'sexo': sexo,
      'raca': raca
    };
  }

  Map<String, Object?> toJson() {
    return {
      'cpf': cpf,
      'nome_tutor': nome_tutor,
      'nome_paciente': nome_paciente,
      'idade': idade,
      'sexo': sexo,
      'raca': raca
    };
  }
}
