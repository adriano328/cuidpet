import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_cuidpet/models/exames.dart';

class Exames_service {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final CollectionReference _collectionReference =
      FirebaseFirestore.instance.collection("exames");

  addExames(Exames exames) {
    _firestore.collection('exames').add(exames.toMap());
  }

  void updateExames(Exames exames) async {
    await _collectionReference.doc(exames.id).update(exames.toMap());
  }

  void deleteExames(String cpf) async {
    await _collectionReference.doc(cpf).delete();
  }

  Stream<QuerySnapshot> getExames() {
    return _collectionReference.snapshots();
  }
}
