import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cuidpet/screens/exames_screen.dart';
import 'package:flutter_cuidpet/service/exames_service.dart';

class exames_list_screen extends StatelessWidget {
  exames_list_screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Exames_service _exames_service = Exames_service();

    return Scaffold(
        appBar: AppBar(
          title: const Text('Exames Solicitados'),
        ),
        body: StreamBuilder<QuerySnapshot>(
          stream: _exames_service.getExames(),
          builder: (BuildContext ctx, AsyncSnapshot<QuerySnapshot> snapshot) {
            if (!snapshot.hasData) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else if (snapshot.hasData) {
              List<DocumentSnapshot> docSnap = snapshot.data!.docs;
              return Padding(
                padding: const EdgeInsets.only(top: 40, right: 400, left: 400),
                child: ListView.separated(
                    itemBuilder: (ctx, index) {
                      return Container(
                        height: 50,
                        child: Card(
                          elevation: 3,
                          shape: const RoundedRectangleBorder(
                            side: BorderSide(
                              color: Colors.black,
                            ),
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                          ),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 15, left: 20),
                                  child: Text(
                                    docSnap[index].get('cpf'),
                                    style: const TextStyle(fontSize: 12),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 15, left: 20),
                                  child: Text(
                                    docSnap[index].get('nomePaciente'),
                                    style: const TextStyle(fontSize: 12),
                                  ),
                                ),
                                IconButton(
                                    onPressed: () {
                                      _exames_service
                                          .deleteExames(docSnap[index].id);
                                    },
                                    icon: const Icon(
                                      Icons.delete,
                                      color: Colors.red,
                                    )),
                                IconButton(
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  exames_screen()));
                                    },
                                    icon: const Icon(
                                      Icons.edit,
                                      color: Colors.red,
                                    ))
                              ]),
                        ),
                      );
                    },
                    separatorBuilder: (ctx, index) {
                      return const SizedBox(height: 4);
                    },
                    itemCount: docSnap.length),
              );
            }
            return Container();
          },
        ));
  }
}
