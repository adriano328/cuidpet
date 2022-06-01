import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_cuidpet/models/patient.dart';

class Patient_service {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

//metodo utilizado para gravar dados no firebase
  addUnit(Patient patient) {
    _firestore.collection('patient').add(patient.toMap());
  }
}
