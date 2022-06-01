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
}
