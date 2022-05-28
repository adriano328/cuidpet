import 'package:flutter/material.dart';
import 'package:flutter_cuidpet/models/units/patient.dart';
import 'package:flutter_cuidpet/models/units/patient_service.dart';

class patinent_screen extends StatefulWidget {
  patinent_screen({Key? key}) : super(key: key);

  @override
  State<patinent_screen> createState() => _patinent_screenState();
}

class _patinent_screenState extends State<patinent_screen> {
  TextEditingController cpfController = TextEditingController();

  TextEditingController nomeTutorController = TextEditingController();

  TextEditingController nomePacienteController = TextEditingController();

  TextEditingController idadeController = TextEditingController();

  TextEditingController sexoController = TextEditingController();

  TextEditingController racaController = TextEditingController();

  String sexo = "";

  String sexo2 = "";

  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Cadastro Paciente'),
        ),
        body: Padding(
          padding: const EdgeInsets.only(right: 400, left: 400),
          child: Column(
            children: [
              const SizedBox(
                height: 30,
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
                  padding: const EdgeInsets.only(left: 50, right: 50),
                  child: Form(
                    key: _formkey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        const SizedBox(
                          height: 20,
                        ),
                        const Text('CPF Tutor: ',
                            style: TextStyle(fontSize: 12)),
                        TextFormField(
                          controller: cpfController,
                          decoration: InputDecoration(
                              isDense: true,
                              contentPadding: const EdgeInsets.all(10),
                              border: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      width: 2, color: Colors.amber),
                                  borderRadius: BorderRadius.circular(8))),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Por favor, preencher o CPF do tutor';
                            }
                            return null;
                          },
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        const Text('Nome tutor: ',
                            style: TextStyle(fontSize: 12)),
                        TextFormField(
                          controller: nomeTutorController,
                          decoration: InputDecoration(
                              isDense: true,
                              contentPadding: const EdgeInsets.all(10),
                              border: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      width: 1, color: Colors.amber),
                                  borderRadius: BorderRadius.circular(8))),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Por favor, preencher o nome do Tutor';
                            }
                            return null;
                          },
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        const Text('Nome Paciente: ',
                            style: TextStyle(fontSize: 12)),
                        TextFormField(
                          controller: nomePacienteController,
                          decoration: InputDecoration(
                              isDense: true,
                              contentPadding: const EdgeInsets.all(10),
                              border: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      width: 1, color: Colors.amber),
                                  borderRadius: BorderRadius.circular(8))),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Por favor, preencher o nome do Paciente';
                            }
                            return null;
                          },
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        const Text('Idade: ', style: TextStyle(fontSize: 12)),
                        TextFormField(
                          controller: idadeController,
                          decoration: InputDecoration(
                              isDense: true,
                              contentPadding: const EdgeInsets.all(10),
                              border: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      width: 1, color: Colors.amber),
                                  borderRadius: BorderRadius.circular(8))),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Por favor, preencher a idade do paciente';
                            }
                            return null;
                          },
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        const Text('Sexo: ', style: TextStyle(fontSize: 12)),
                        RadioListTile(
                            title: const Text("Macho"),
                            value: "Macho",
                            groupValue: sexo,
                            onChanged: (value) {
                              setState(() {
                                sexo = (value ?? '') as String;
                              });
                            }),
                        RadioListTile(
                            title: const Text("Femea"),
                            value: "Femea",
                            groupValue: sexo,
                            onChanged: (value) {
                              setState(() {
                                sexo = (value ?? '') as String;
                              });
                            }),
                        const SizedBox(
                          height: 15,
                        ),
                        const Text('Raça: ', style: TextStyle(fontSize: 12)),
                        TextFormField(
                          controller: racaController,
                          decoration: InputDecoration(
                              isDense: true,
                              contentPadding: const EdgeInsets.all(10),
                              border: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      width: 1, color: Colors.amber),
                                  borderRadius: BorderRadius.circular(8))),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Por favor, preencher a raça do paciente';
                            }
                            return null;
                          },
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        ElevatedButton(
                            onPressed: () {
                              if (_formkey.currentState!.validate()) {
                                Patient_service patient_service =
                                    Patient_service();
                                Patient patient = Patient(
                                    cpf: cpfController.text,
                                    nome_tutor: nomeTutorController.text,
                                    nome_paciente: nomePacienteController.text,
                                    idade: idadeController.text,
                                    sexo: sexo,
                                    raca: racaController.text);
                                patient_service.addUnit(patient);
                              }
                            },
                            child: const Text('Salvar')),
                        const SizedBox(
                          height: 15,
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
    );
  }
}