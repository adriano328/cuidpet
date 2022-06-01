import 'package:flutter/material.dart';
import 'package:flutter_cuidpet/models/exames.dart';
import 'package:flutter_cuidpet/service/exames_service.dart';

void main() {
  runApp(exames_screen());
}

class exames_screen extends StatefulWidget {
  @override
  State<exames_screen> createState() => _exames_screenState();
}

class _exames_screenState extends State<exames_screen> {
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

  bool checked = false;

  TextEditingController cpfController = TextEditingController();
  TextEditingController nomePacienteController = TextEditingController();
  TextEditingController observacoesController = TextEditingController();

  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.amber),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Solicitação Exames'),
          actions: [
            Row(
              children: [
                TextButton.icon(
                    onPressed: () {},
                    icon: const Icon(Icons.arrow_back),
                    label: const Text('Voltar')),
              ],
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(right: 400, left: 400),
            child: Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                Card(
                  elevation: 3,
                  shape: const RoundedRectangleBorder(
                    side: BorderSide(
                      color: Colors.black,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                  ),
                  child: Padding(
                    padding:
                        const EdgeInsets.only(left: 50, right: 50, bottom: 20),
                    child: Form(
                      key: _formkey,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              const Text('CPF Tutor: ',
                                  style: TextStyle(fontSize: 10)),
                              Expanded(
                                child: TextFormField(
                                  style: const TextStyle(fontSize: 12),
                                  controller: cpfController,
                                  decoration: InputDecoration(
                                    isDense: true,
                                    contentPadding: const EdgeInsets.all(10),
                                    border: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                            width: 2, color: Colors.amber),
                                        borderRadius: BorderRadius.circular(8)),
                                  ),
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Por favor, preencha o CPF do tutor';
                                    }
                                    return null;
                                  },
                                ),
                              ),
                              const SizedBox(
                                width: 15,
                              ),
                              const Text('Nome Paciente: ',
                                  style: TextStyle(fontSize: 10)),
                              Expanded(
                                child: TextFormField(
                                  style: const TextStyle(fontSize: 12),
                                  controller: nomePacienteController,
                                  decoration: InputDecoration(
                                    isDense: true,
                                    contentPadding: const EdgeInsets.all(10),
                                    border: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                            width: 2, color: Colors.amber),
                                        borderRadius: BorderRadius.circular(8)),
                                  ),
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Por favor, preencha o Nome do tutor';
                                    }
                                    return null;
                                  },
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          ElevatedButton(
                              onPressed: () {}, child: const Text('Buscar')),
                          const SizedBox(
                            height: 15,
                          ),
                          Column(
                            children: [
                              const Text('Exames Solicitados: '),
                              const SizedBox(
                                height: 5,
                              ),
                              Row(
                                children: [
                                  Row(
                                    children: [
                                      Checkbox(
                                        value: hemograma,
                                        onChanged: (checked) {
                                          setState(() {
                                            hemograma = !hemograma;
                                          });
                                        },
                                      ),
                                      const Text('Hemograma',
                                          style: TextStyle(
                                            fontSize: 10,
                                          )),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Checkbox(
                                        value: contagemPlaquetas,
                                        onChanged: (checked) {
                                          setState(() {
                                            contagemPlaquetas =
                                                !contagemPlaquetas;
                                          });
                                        },
                                      ),
                                      const Text(
                                        'Contagem de Plaquetas',
                                        style: TextStyle(
                                          fontSize: 10,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Checkbox(
                                        value: pesquisaHemoparasitas,
                                        onChanged: (checked) {
                                          setState(() {
                                            pesquisaHemoparasitas =
                                                !pesquisaHemoparasitas;
                                          });
                                        },
                                      ),
                                      const Text(
                                        'Pesquisa de Hemoparasitas',
                                        style: TextStyle(
                                          fontSize: 10,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Row(
                                    children: [
                                      Checkbox(
                                        value: culturaBacteriologica,
                                        onChanged: (checked) {
                                          setState(() {
                                            culturaBacteriologica =
                                                !culturaBacteriologica;
                                          });
                                        },
                                      ),
                                      const Text(
                                        'Cultura Bacteriológica',
                                        style: TextStyle(
                                          fontSize: 10,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Checkbox(
                                        value: urinaI,
                                        onChanged: (checked) {
                                          setState(() {
                                            urinaI = !urinaI;
                                          });
                                        },
                                      ),
                                      const Text(
                                        'Urina I',
                                        style: TextStyle(
                                          fontSize: 10,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Checkbox(
                                        value: citologia,
                                        onChanged: (checked) {
                                          setState(() {
                                            citologia = !citologia;
                                          });
                                        },
                                      ),
                                      const Text(
                                        'Citologia',
                                        style: TextStyle(
                                          fontSize: 10,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Checkbox(
                                        value: perfilRenal,
                                        onChanged: (checked) {
                                          setState(() {
                                            perfilRenal = !perfilRenal;
                                          });
                                        },
                                      ),
                                      const Text(
                                        'Perfil Renal',
                                        style: TextStyle(
                                          fontSize: 10,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Checkbox(
                                        value: perfilHepatico,
                                        onChanged: (checked) {
                                          setState(() {
                                            perfilHepatico = !perfilHepatico;
                                          });
                                        },
                                      ),
                                      const Text(
                                        'Perfil Hepático',
                                        style: TextStyle(
                                          fontSize: 10,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Row(
                                    children: [
                                      Checkbox(
                                        value: culturaOuvido,
                                        onChanged: (checked) {
                                          setState(() {
                                            culturaOuvido = !culturaOuvido;
                                          });
                                        },
                                      ),
                                      const Text(
                                        'Cultura de Ouvido',
                                        style: TextStyle(
                                          fontSize: 10,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Checkbox(
                                        value: pesquisaEctoparasitas,
                                        onChanged: (checked) {
                                          setState(() {
                                            pesquisaEctoparasitas =
                                                !pesquisaEctoparasitas;
                                          });
                                        },
                                      ),
                                      const Text(
                                        'Pesquisa de Ectoparasitas',
                                        style: TextStyle(
                                          fontSize: 10,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              const Text(
                                'Observações:',
                                style: TextStyle(
                                  fontSize: 12,
                                ),
                              ),
                              TextFormField(
                                style: const TextStyle(fontSize: 12),
                                controller: observacoesController,
                                minLines: 6,
                                keyboardType: TextInputType.multiline,
                                maxLines: null,
                                decoration: InputDecoration(
                                    isDense: true,
                                    contentPadding: const EdgeInsets.all(10),
                                    border: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                            width: 2, color: Colors.amber),
                                        borderRadius:
                                            BorderRadius.circular(8))),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              ElevatedButton(
                                  onPressed: () {
                                    if (_formkey.currentState!.validate()) {
                                      Exames_service exames_service =
                                          Exames_service();
                                      Exames exames = Exames(
                                          cpf: cpfController.text,
                                          nomePaciente:
                                              nomePacienteController.text,
                                          observacao:
                                              observacoesController.text,
                                          hemograma: hemograma,
                                          contagemPlaquetas: contagemPlaquetas,
                                          pesquisaHemoparasitas:
                                              pesquisaHemoparasitas,
                                          culturaBacteriologica:
                                              culturaBacteriologica,
                                          urinaI: urinaI,
                                          citologia: citologia,
                                          perfilRenal: perfilRenal,
                                          perfilHepatico: perfilHepatico,
                                          culturaOuvido: culturaOuvido,
                                          pesquisaEctoparasitas:
                                              pesquisaEctoparasitas);
                                      exames_service.addExames(exames);
                                    }
                                  },
                                  child: const Text('Solicitar')),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
