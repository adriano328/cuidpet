import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_cuidpet/models/exames.dart';

class Exames_list_service {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final CollectionReference _collectionReference = FirebaseFirestore.instance.collection("exames");

   void updateExames(Exames exames) async {
    await _collectionReference.doc(exames.cpf).update(exames.toMap());
  }
  


}
