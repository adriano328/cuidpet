import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_cuidpet/models/consulta.dart';

class Consulta_service {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final CollectionReference _collectionReference =
      FirebaseFirestore.instance.collection("consulta");

  addConsulta(Consulta consulta) {
    _firestore.collection('consulta').add(consulta.toMap());
  }

  void updateConsulta(Consulta consulta) async {
    await _collectionReference.doc(consulta.cpf).update(consulta.toMap());
  }

  void deleteConsulta(String cpf) async {
    await _collectionReference.doc(cpf).delete();
  }

  Stream<QuerySnapshot> getConsulta() {
    return _collectionReference.snapshots();
  }
}
