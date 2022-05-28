import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_cuidpet/models/consulta/consulta.dart';

class Consulta_service {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  addConsulta(Consulta consulta) {
    _firestore.collection('consulta').add(consulta.toMap());
  }
}
