import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(exames_list_screen());
}

class exames_list_screen extends StatelessWidget {
  const exames_list_screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: StreamBuilder<QuerySnapshot>(
      builder: (BuildContext ctx, snapshot) {
        return Container();
      },
    ));
  }
}
