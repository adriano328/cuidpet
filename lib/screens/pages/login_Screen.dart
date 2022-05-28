import 'package:flutter/material.dart';
import 'package:flutter_cuidpet/models/user/user_local.dart';
import 'package:flutter_cuidpet/models/user/user_services.dart';
import 'package:flutter_cuidpet/screens/pages/desktop_screen.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  UserLocal userLocal = UserLocal();

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 100),
            child: Image(image: AssetImage('assets/logo_inicio.png')),
          ),
          Padding(
            padding: const EdgeInsets.only(
                left: 550, right: 550, top: 10, bottom: 40),
            child: Column(
              children: [
                Form(
                    key: _formKey,
                    child: Padding(
                      padding: const EdgeInsets.all(25.0),
                      child: Column(
                        children: [
                          TextFormField(
                            onSaved: (value) => userLocal.email = value,
                            initialValue: userLocal.email,
                            decoration: InputDecoration(
                                hintText: 'E-mail: ',
                                hintStyle: const TextStyle(fontSize: 10),
                                isDense: true,
                                contentPadding: const EdgeInsets.all(12),
                                border: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                        width: 2, color: Colors.amber),
                                    borderRadius: BorderRadius.circular(8))),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Por favor, insira o e-mail!';
                              }
                              return null;
                            },
                            style: const TextStyle(fontSize: 12),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          TextFormField(
                            onSaved: (value) => userLocal.password = value,
                            initialValue: userLocal.password,
                            decoration: InputDecoration(
                                hintText: 'Senha: ',
                                hintStyle: const TextStyle(fontSize: 10),
                                isDense: true,
                                contentPadding: const EdgeInsets.all(12),
                                border: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                        width: 2, color: Colors.amber),
                                    borderRadius: BorderRadius.circular(8))),
                            obscureText: true,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Por favor, insira a senha!';
                              }
                              return null;
                            },
                            style: const TextStyle(fontSize: 12),
                          )
                        ],
                      ),
                    )),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            _formKey.currentState!.save();
                            UserServices _userServices = UserServices();
                            _userServices.signIn(userLocal, onSucess: () {
                              Navigator.of(context).pushReplacement(
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const desktop_screen()));
                            }, onFail: (e) {
                              Text('$e');
                            });
                          }
                        },
                        child: const Text('Entrar'))
                  ],
                ),
                const SizedBox(
                  height: 30,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
