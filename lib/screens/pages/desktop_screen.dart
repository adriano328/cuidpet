import 'package:flutter/material.dart';
import 'package:flutter_cuidpet/screens/pages/consult_screen.dart';
import 'package:flutter_cuidpet/screens/pages/exames_screen.dart';
import 'package:flutter_cuidpet/screens/pages/patient_screen.dart';

void main() {
  runApp(const desktop_screen());
}

class desktop_screen extends StatelessWidget {
  const desktop_screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: const MyHomePage(title: ''),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 20, top: 8),
            child: Row(
              children: [
                ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.blue[400], // background
                      onPrimary: Colors.white,
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => patinent_screen()));
                    },
                    icon: const Icon(Icons.add),
                    label: const Text('Adionar')),
                const SizedBox(
                  width: 20,
                ),
                ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.blue[400], // background
                      onPrimary: Colors.white,
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => consult_screen()));
                    },
                    icon: const Icon(Icons.search),
                    label: const Text('Consulta')),
                const SizedBox(
                  width: 20,
                ),
                ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.blue[400], // background
                      onPrimary: Colors.white,
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => exames_screen()));
                    },
                    icon: const Icon(Icons.find_in_page_outlined),
                    label: const Text('Exames')),
                const SizedBox(
                  width: 20,
                ),
                ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.blue[400], // background
                      onPrimary: Colors.white,
                    ),
                    onPressed: () {},
                    icon: const Icon(Icons.article),
                    label: const Text('Laboratório')),
                const SizedBox(
                  width: 20,
                ),
                ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.blue[400], // background
                      onPrimary: Colors.white,
                    ),
                    onPressed: () {},
                    icon: const Icon(Icons.vaccines),
                    label: const Text('Vacinas')),
                const SizedBox(
                  width: 20,
                ),
              ],
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: 470,
              top: 110,
            ),
            child: Image.asset(
              'assets/logo_desktop.png',
              color: Colors.white.withOpacity(0.3),
              colorBlendMode: BlendMode.modulate,
            ),
          )
        ],
      ),
    );
  }
}
