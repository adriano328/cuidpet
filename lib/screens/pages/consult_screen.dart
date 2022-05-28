import 'package:flutter/material.dart';
import 'package:flutter_cuidpet/models/consulta/consulta.dart';
import 'package:flutter_cuidpet/models/consulta/Consulta_service.dart';
import 'package:flutter_cuidpet/models/consulta/consulta.dart';

void main() {
  runApp(consult_screen());
}

class consult_screen extends StatefulWidget {
  consult_screen({Key? key}) : super(key: key);

  @override
  State<consult_screen> createState() => _consult_screenState();
}

class _consult_screenState extends State<consult_screen> {
  final _formkey = GlobalKey<FormState>();
  TextEditingController cpfController = TextEditingController();
  TextEditingController nomePacienteController = TextEditingController();
  TextEditingController pesoController = TextEditingController();
  TextEditingController anamneseGeral = TextEditingController();
  TextEditingController sistemaRespiratorioController = TextEditingController();
  TextEditingController sistemaCardiovascularController =
      TextEditingController();
  TextEditingController sistemaDigestorioController = TextEditingController();
  TextEditingController sistemaUrinarioController = TextEditingController();
  TextEditingController sistemaReprodutorController = TextEditingController();
  TextEditingController sistemaLocomotorController = TextEditingController();
  TextEditingController sistemaNeurologicoController = TextEditingController();
  TextEditingController peleAnexosController = TextEditingController();
  TextEditingController olhosController = TextEditingController();
  TextEditingController posturaController = TextEditingController();
  TextEditingController nivelConscienciaController = TextEditingController();
  TextEditingController escoreCorporalController = TextEditingController();
  TextEditingController TRController = TextEditingController();
  TextEditingController FRController = TextEditingController();
  TextEditingController TPCController = TextEditingController();
  TextEditingController pulsoController = TextEditingController();
  TextEditingController hidratacaoController = TextEditingController();
  TextEditingController linfonodosSubController = TextEditingController();
  TextEditingController linfonodosPreescapularesController =
      TextEditingController();
  TextEditingController linfonodosPopliteosController = TextEditingController();
  TextEditingController linfonodosInguinaisController = TextEditingController();
  TextEditingController mucosaOcularController = TextEditingController();
  TextEditingController mucosaOralController = TextEditingController();
  TextEditingController mucosaPenianaeVulvarController =
      TextEditingController();
  TextEditingController mucosaAnalController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Prontuario Paciente'),
        ),
        body: SingleChildScrollView(
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
                            height: 8,
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
                                        width: 2, color: Colors.amber),
                                    borderRadius: BorderRadius.circular(8))),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Por favor, preencher o nome do paciente';
                              }
                              return null;
                            },
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          ElevatedButton(
                              onPressed: () {}, child: const Text('Buscar')),
                          const SizedBox(
                            height: 8,
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          const Text('Peso: ', style: TextStyle(fontSize: 12)),
                          TextFormField(
                            controller: pesoController,
                            decoration: InputDecoration(
                                isDense: true,
                                contentPadding: const EdgeInsets.all(10),
                                border: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                        width: 2, color: Colors.amber),
                                    borderRadius: BorderRadius.circular(8))),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Por favor, preencher do paciente';
                              }
                              return null;
                            },
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          const Text(
                            'Anamnese Geral:',
                            style: TextStyle(
                              fontSize: 12,
                            ),
                          ),
                          TextFormField(
                            controller: anamneseGeral,
                            minLines: 6,
                            keyboardType: TextInputType.multiline,
                            maxLines: null,
                            decoration: InputDecoration(
                                isDense: true,
                                contentPadding: const EdgeInsets.all(10),
                                border: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                        width: 2, color: Colors.amber),
                                    borderRadius: BorderRadius.circular(8))),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Por favor, preencher as informações abaixo!';
                              }
                              return null;
                            },
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          const Text(
                            'Anamnese Especial:',
                            style: TextStyle(
                              fontSize: 12,
                            ),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          const Text(
                            'Sistema Respiratório - Secreção, tosse, espirro, cianose, dispnéia, ruido na respiração:',
                            style: TextStyle(
                              fontSize: 12,
                            ),
                          ),
                          TextFormField(
                            controller: sistemaRespiratorioController,
                            minLines: 1,
                            keyboardType: TextInputType.multiline,
                            maxLines: null,
                            decoration: InputDecoration(
                                isDense: true,
                                contentPadding: const EdgeInsets.all(10),
                                border: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                        width: 2, color: Colors.amber),
                                    borderRadius: BorderRadius.circular(8))),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Por favor, preencher as informações abaixo!';
                              }
                              return null;
                            },
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          const Text(
                            'Sistema Cardiovascular - intolerância a exercicios, cansaço, síncope, cianose, tosse:',
                            style: TextStyle(
                              fontSize: 12,
                            ),
                          ),
                          TextFormField(
                            controller: sistemaCardiovascularController,
                            minLines: 1,
                            keyboardType: TextInputType.multiline,
                            maxLines: null,
                            decoration: InputDecoration(
                                isDense: true,
                                contentPadding: const EdgeInsets.all(10),
                                border: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                        width: 2, color: Colors.amber),
                                    borderRadius: BorderRadius.circular(8))),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Por favor, preencher as informações abaixo!';
                              }
                              return null;
                            },
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          const Text(
                            'Sistema digestório - apetite, vômito, diarréia: ',
                            style: TextStyle(
                              fontSize: 12,
                            ),
                          ),
                          TextFormField(
                            controller: sistemaDigestorioController,
                            minLines: 1,
                            keyboardType: TextInputType.multiline,
                            maxLines: null,
                            decoration: InputDecoration(
                                isDense: true,
                                contentPadding: const EdgeInsets.all(10),
                                border: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                        width: 2, color: Colors.amber),
                                    borderRadius: BorderRadius.circular(8))),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Por favor, preencher as informações abaixo!';
                              }
                              return null;
                            },
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          const Text(
                            'Sistema urinário - ingestão de água, aspecto, volume e frequência da urina, tenesmo vesical, disúria:',
                            style: TextStyle(
                              fontSize: 12,
                            ),
                          ),
                          TextFormField(
                            controller: sistemaUrinarioController,
                            minLines: 1,
                            keyboardType: TextInputType.multiline,
                            maxLines: null,
                            decoration: InputDecoration(
                                isDense: true,
                                contentPadding: const EdgeInsets.all(10),
                                border: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                        width: 2, color: Colors.amber),
                                    borderRadius: BorderRadius.circular(8))),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Por favor, preencher as informações abaixo!';
                              }
                              return null;
                            },
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          const Text(
                            'Sistema Reprodutor - secreção, cio, anticoncepcional, prenhez, número de filhotes, mamas, alteração de comportamento:',
                            style: TextStyle(
                              fontSize: 12,
                            ),
                          ),
                          TextFormField(
                            controller: sistemaReprodutorController,
                            minLines: 1,
                            keyboardType: TextInputType.multiline,
                            maxLines: null,
                            decoration: InputDecoration(
                                isDense: true,
                                contentPadding: const EdgeInsets.all(10),
                                border: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                        width: 2, color: Colors.amber),
                                    borderRadius: BorderRadius.circular(8))),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Por favor, preencher as informações abaixo!';
                              }
                              return null;
                            },
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          const Text(
                            'Sistema Locomotor - claudicação, trauma, aumento de volume, marcha, impotência de membro, frequência e tipo de exercícios:',
                            style: TextStyle(
                              fontSize: 12,
                            ),
                          ),
                          TextFormField(
                            controller: sistemaLocomotorController,
                            minLines: 1,
                            keyboardType: TextInputType.multiline,
                            maxLines: null,
                            decoration: InputDecoration(
                                isDense: true,
                                contentPadding: const EdgeInsets.all(10),
                                border: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                        width: 2, color: Colors.amber),
                                    borderRadius: BorderRadius.circular(8))),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Por favor, preencher as informações abaixo!';
                              }
                              return null;
                            },
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          const Text(
                            'Sistema Neurologico - convulsão, síncopes, déficits neurológicos, deambulação, audição, olfato, propriocepção, manias, deglutição, alteração latido/miado:',
                            style: TextStyle(
                              fontSize: 12,
                            ),
                          ),
                          TextFormField(
                            controller: sistemaNeurologicoController,
                            minLines: 1,
                            keyboardType: TextInputType.multiline,
                            maxLines: null,
                            decoration: InputDecoration(
                                isDense: true,
                                contentPadding: const EdgeInsets.all(10),
                                border: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                        width: 2, color: Colors.amber),
                                    borderRadius: BorderRadius.circular(8))),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Por favor, preencher as informações abaixo!';
                              }
                              return null;
                            },
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          const Text(
                            'Pele e anexos - higiene, secreção, alopecia, prurido, lesões, descamação, parasitas, orelha:',
                            style: TextStyle(
                              fontSize: 12,
                            ),
                          ),
                          TextFormField(
                            controller: peleAnexosController,
                            minLines: 1,
                            keyboardType: TextInputType.multiline,
                            maxLines: null,
                            decoration: InputDecoration(
                                isDense: true,
                                contentPadding: const EdgeInsets.all(10),
                                border: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                        width: 2, color: Colors.amber),
                                    borderRadius: BorderRadius.circular(8))),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Por favor, preencher as informações abaixo!';
                              }
                              return null;
                            },
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          const Text(
                            'Olhos - secreção, olho vermelho, olho esbranquiçado, déficit visual, blefaroespamo, fotofobia, primeiro olho afetado:',
                            style: TextStyle(
                              fontSize: 12,
                            ),
                          ),
                          TextFormField(
                            controller: olhosController,
                            minLines: 1,
                            keyboardType: TextInputType.multiline,
                            maxLines: null,
                            decoration: InputDecoration(
                                isDense: true,
                                contentPadding: const EdgeInsets.all(10),
                                border: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                        width: 2, color: Colors.amber),
                                    borderRadius: BorderRadius.circular(8))),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Por favor, preencher as informações abaixo!';
                              }
                              return null;
                            },
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          const Text(
                            'Exame Fisico: ',
                            style: TextStyle(
                              fontSize: 12,
                            ),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          const Text(
                            'Postura: ',
                            style: TextStyle(
                              fontSize: 12,
                            ),
                          ),
                          TextFormField(
                            controller: posturaController,
                            minLines: 1,
                            keyboardType: TextInputType.multiline,
                            maxLines: null,
                            decoration: InputDecoration(
                                isDense: true,
                                contentPadding: const EdgeInsets.all(10),
                                border: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                        width: 2, color: Colors.amber),
                                    borderRadius: BorderRadius.circular(8))),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Por favor, preencher as informações abaixo!';
                              }
                              return null;
                            },
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          const Text(
                            'Nivel de consciência:',
                            style: TextStyle(
                              fontSize: 12,
                            ),
                          ),
                          TextFormField(
                            controller: nivelConscienciaController,
                            minLines: 1,
                            keyboardType: TextInputType.multiline,
                            maxLines: null,
                            decoration: InputDecoration(
                                isDense: true,
                                contentPadding: const EdgeInsets.all(10),
                                border: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                        width: 2, color: Colors.amber),
                                    borderRadius: BorderRadius.circular(8))),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Por favor, preencher as informações abaixo!';
                              }
                              return null;
                            },
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          const Text(
                            'Escore Corporal:',
                            style: TextStyle(
                              fontSize: 12,
                            ),
                          ),
                          TextFormField(
                            controller: escoreCorporalController,
                            minLines: 1,
                            keyboardType: TextInputType.multiline,
                            maxLines: null,
                            decoration: InputDecoration(
                                isDense: true,
                                contentPadding: const EdgeInsets.all(10),
                                border: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                        width: 2, color: Colors.amber),
                                    borderRadius: BorderRadius.circular(8))),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Por favor, preencher as informações abaixo!';
                              }
                              return null;
                            },
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          const Text(
                            'TR (ºC):',
                            style: TextStyle(
                              fontSize: 12,
                            ),
                          ),
                          TextFormField(
                            controller: TRController,
                            minLines: 1,
                            keyboardType: TextInputType.multiline,
                            maxLines: null,
                            decoration: InputDecoration(
                                isDense: true,
                                contentPadding: const EdgeInsets.all(10),
                                border: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                        width: 2, color: Colors.amber),
                                    borderRadius: BorderRadius.circular(8))),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Por favor, preencher as informações abaixo!';
                              }
                              return null;
                            },
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          const Text(
                            'FR (ºmpm):',
                            style: TextStyle(
                              fontSize: 12,
                            ),
                          ),
                          TextFormField(
                            controller: FRController,
                            minLines: 1,
                            keyboardType: TextInputType.multiline,
                            maxLines: null,
                            decoration: InputDecoration(
                                isDense: true,
                                contentPadding: const EdgeInsets.all(10),
                                border: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                        width: 2, color: Colors.amber),
                                    borderRadius: BorderRadius.circular(8))),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Por favor, preencher as informações abaixo!';
                              }
                              return null;
                            },
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          const Text(
                            'TPC (seg):',
                            style: TextStyle(
                              fontSize: 12,
                            ),
                          ),
                          TextFormField(
                            controller: TPCController,
                            minLines: 1,
                            keyboardType: TextInputType.multiline,
                            maxLines: null,
                            decoration: InputDecoration(
                                isDense: true,
                                contentPadding: const EdgeInsets.all(10),
                                border: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                        width: 2, color: Colors.amber),
                                    borderRadius: BorderRadius.circular(8))),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Por favor, preencher as informações abaixo!';
                              }
                              return null;
                            },
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          const Text(
                            'Pulso (ppm):',
                            style: TextStyle(
                              fontSize: 12,
                            ),
                          ),
                          TextFormField(
                            controller: pulsoController,
                            minLines: 1,
                            keyboardType: TextInputType.multiline,
                            maxLines: null,
                            decoration: InputDecoration(
                                isDense: true,
                                contentPadding: const EdgeInsets.all(10),
                                border: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                        width: 2, color: Colors.amber),
                                    borderRadius: BorderRadius.circular(8))),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Por favor, preencher as informações abaixo!';
                              }
                              return null;
                            },
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          const Text(
                            'Hidratação:',
                            style: TextStyle(
                              fontSize: 12,
                            ),
                          ),
                          TextFormField(
                            controller: hidratacaoController,
                            minLines: 1,
                            keyboardType: TextInputType.multiline,
                            maxLines: null,
                            decoration: InputDecoration(
                                isDense: true,
                                contentPadding: const EdgeInsets.all(10),
                                border: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                        width: 2, color: Colors.amber),
                                    borderRadius: BorderRadius.circular(8))),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Por favor, preencher as informações abaixo!';
                              }
                              return null;
                            },
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          const Text(
                            'Linfonodos Submand:',
                            style: TextStyle(
                              fontSize: 12,
                            ),
                          ),
                          TextFormField(
                            controller: linfonodosSubController,
                            minLines: 1,
                            keyboardType: TextInputType.multiline,
                            maxLines: null,
                            decoration: InputDecoration(
                                isDense: true,
                                contentPadding: const EdgeInsets.all(10),
                                border: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                        width: 2, color: Colors.amber),
                                    borderRadius: BorderRadius.circular(8))),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Por favor, preencher as informações abaixo!';
                              }
                              return null;
                            },
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          const Text(
                            'Linf. Pré-escapulares:',
                            style: TextStyle(
                              fontSize: 12,
                            ),
                          ),
                          TextFormField(
                            controller: linfonodosPreescapularesController,
                            minLines: 1,
                            keyboardType: TextInputType.multiline,
                            maxLines: null,
                            decoration: InputDecoration(
                                isDense: true,
                                contentPadding: const EdgeInsets.all(10),
                                border: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                        width: 2, color: Colors.amber),
                                    borderRadius: BorderRadius.circular(8))),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Por favor, preencher as informações abaixo!';
                              }
                              return null;
                            },
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          const Text(
                            'Linf. Poplíteos:',
                            style: TextStyle(
                              fontSize: 12,
                            ),
                          ),
                          TextFormField(
                            controller: linfonodosPopliteosController,
                            minLines: 1,
                            keyboardType: TextInputType.multiline,
                            maxLines: null,
                            decoration: InputDecoration(
                                isDense: true,
                                contentPadding: const EdgeInsets.all(10),
                                border: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                        width: 2, color: Colors.amber),
                                    borderRadius: BorderRadius.circular(8))),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Por favor, preencher as informações abaixo!';
                              }
                              return null;
                            },
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          const Text(
                            'Linf. Inguinais:',
                            style: TextStyle(
                              fontSize: 12,
                            ),
                          ),
                          TextFormField(
                            controller: linfonodosInguinaisController,
                            minLines: 1,
                            keyboardType: TextInputType.multiline,
                            maxLines: null,
                            decoration: InputDecoration(
                                isDense: true,
                                contentPadding: const EdgeInsets.all(10),
                                border: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                        width: 2, color: Colors.amber),
                                    borderRadius: BorderRadius.circular(8))),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Por favor, preencher as informações abaixo!';
                              }
                              return null;
                            },
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          const Text(
                            'Mucosa ocular:',
                            style: TextStyle(
                              fontSize: 12,
                            ),
                          ),
                          TextFormField(
                            controller: mucosaOcularController,
                            minLines: 1,
                            keyboardType: TextInputType.multiline,
                            maxLines: null,
                            decoration: InputDecoration(
                                isDense: true,
                                contentPadding: const EdgeInsets.all(10),
                                border: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                        width: 2, color: Colors.amber),
                                    borderRadius: BorderRadius.circular(8))),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Por favor, preencher as informações abaixo!';
                              }
                              return null;
                            },
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          const Text(
                            'Mucosa oral:',
                            style: TextStyle(
                              fontSize: 12,
                            ),
                          ),
                          TextFormField(
                            controller: mucosaOralController,
                            minLines: 1,
                            keyboardType: TextInputType.multiline,
                            maxLines: null,
                            decoration: InputDecoration(
                                isDense: true,
                                contentPadding: const EdgeInsets.all(10),
                                border: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                        width: 2, color: Colors.amber),
                                    borderRadius: BorderRadius.circular(8))),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Por favor, preencher as informações abaixo!';
                              }
                              return null;
                            },
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          const Text(
                            'Mucosa peniana/vulvar:',
                            style: TextStyle(
                              fontSize: 12,
                            ),
                          ),
                          TextFormField(
                            controller: mucosaPenianaeVulvarController,
                            minLines: 1,
                            keyboardType: TextInputType.multiline,
                            maxLines: null,
                            decoration: InputDecoration(
                                isDense: true,
                                contentPadding: const EdgeInsets.all(10),
                                border: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                        width: 2, color: Colors.amber),
                                    borderRadius: BorderRadius.circular(8))),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Por favor, preencher as informações abaixo!';
                              }
                              return null;
                            },
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          const Text(
                            'Mucosa Anal:',
                            style: TextStyle(
                              fontSize: 12,
                            ),
                          ),
                          TextFormField(
                            controller: mucosaAnalController,
                            minLines: 1,
                            keyboardType: TextInputType.multiline,
                            maxLines: null,
                            decoration: InputDecoration(
                                isDense: true,
                                contentPadding: const EdgeInsets.all(10),
                                border: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                        width: 2, color: Colors.amber),
                                    borderRadius: BorderRadius.circular(8))),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Por favor, preencher as informações abaixo!';
                              }
                              return null;
                            },
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          ElevatedButton(
                              onPressed: () {
                                if (_formkey.currentState!.validate()) {
                                  Consulta_service consulta_service =
                                      Consulta_service();
                                  Consulta consulta = Consulta(
                                    cpfController.text,
                                      nomePacienteController.text,
                                      pesoController.text,
                                      anamneseGeral.text,
                                      sistemaRespiratorioController.text,
                                      sistemaCardiovascularController.text,
                                      sistemaDigestorioController.text,
                                      sistemaUrinarioController.text,
                                      sistemaReprodutorController.text,
                                      sistemaLocomotorController.text,
                                      sistemaNeurologicoController.text,
                                      peleAnexosController.text,
                                      olhosController.text,
                                      posturaController.text,
                                      nivelConscienciaController.text,
                                      escoreCorporalController.text,
                                      TRController.text,
                                      FRController.text,
                                      TPCController.text,
                                      pulsoController.text,
                                      hidratacaoController.text,
                                      linfonodosSubController.text,
                                      linfonodosPreescapularesController.text,
                                      linfonodosPopliteosController.text,
                                      linfonodosInguinaisController.text,
                                      mucosaOcularController.text,
                                      mucosaOralController.text,
                                      mucosaPenianaeVulvarController.text,
                                      mucosaAnalController.text
                                  );
                                       consulta_service.addConsulta(consulta);
                                }
                                const SizedBox(
                                  height: 30,
                                );
                              },
                              child: const Text('Salvar Dados')),
                          const SizedBox(
                            height: 12,
                          ),
                        ]),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
