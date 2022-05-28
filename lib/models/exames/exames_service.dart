import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_cuidpet/models/exames/exames.dart';

class Exames_service {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  addExames(Exames exames) {
    _firestore.collection('exames').add(exames.toMap());
  }
}
