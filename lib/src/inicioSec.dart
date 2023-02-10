// ignore: file_names
// ignore_for_file: camel_case_types

import 'package:conredy/src/home.dart';
import 'package:conredy/src/registrarse.dart';
import 'package:flutter/material.dart';

class inicioSec extends StatelessWidget {
  const inicioSec({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Login",
      home: inicioDesesion(),
    );
  }
}

// ignore: camel_case_types
class inicioDesesion extends StatefulWidget {
  const inicioDesesion({super.key});

  @override
  State<inicioDesesion> createState() => _inicioDesesionState();
}

// ignore: camel_case_types
class _inicioDesesionState extends State<inicioDesesion> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
            gradient: LinearGradient(colors: <Color>[
              Color.fromARGB(255, 185, 228, 228),
              Color.fromARGB(255, 203, 204, 204),
            ], begin: Alignment.topCenter),
          ),
          child: ListView(
            padding:
                const EdgeInsets.symmetric(horizontal: 70.0, vertical: 20.0),
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // ignore: prefer_const_constructor
                  const CircleAvatar(
                    radius: 100.0,
                    backgroundColor: Colors.transparent,
                    backgroundImage: AssetImage('images/ico.png'),
                  ),
                  const SizedBox(
                    height: 15.0,
                  ),
                  const Text(
                    'inicio de sesión',
                    style: TextStyle(
                      fontFamily: 'Lobster',
                      fontSize: 25.0,
                    ),
                  ),
                  const SizedBox(
                    height: 25.0,
                  ),
                  //Esto es para hacer como un cuadro de texto
                  TextField(
                    enableInteractiveSelection: false,
                    autofocus: true,
                    decoration: InputDecoration(
                        hintText: 'Nombre de usuario',
                        labelText: 'Nombre de Usuario',
                        suffixIcon: const Icon(Icons.account_circle),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.0))),
                  ), //Para dar espacio entre algo
                  const SizedBox(
                    height: 25.0,
                  ),
                  TextField(
                    enableInteractiveSelection: false,
                    obscureText: true,
                    decoration: InputDecoration(
                        hintText: 'Contraseña',
                        labelText: 'Contraseña',
                        suffixIcon: const Icon(Icons.lock_outline),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.0))),
                  ),
                  const SizedBox(
                    height: 25.0,
                  ),
                  SizedBox(
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => pagina1(),
                        ));
                      },
                      style: TextButton.styleFrom(
                          backgroundColor:
                              const Color.fromARGB(255, 177, 167, 167)),
                      child: const Text(
                        "Iniciar sesión",
                        style: TextStyle(
                            fontSize: 25.0,
                            color: Colors.black,
                            fontFamily: 'AkayaTelivigala'),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 25.0,
                  ),
                  TextButton(
                    style: ButtonStyle(
                      foregroundColor:
                          MaterialStateProperty.all<Color>(Colors.blue),
                    ),
                    onPressed: () {},
                    child: const Text(
                      'Se te olvido tu contraseña?',
                      style: TextStyle(
                          fontSize: 15.0,
                          fontFamily: 'Righteous',
                          color: Colors.black),
                    ),
                  ),
                  const SizedBox(
                    height: 25.0,
                  ),
                  TextButton(
                    style: ButtonStyle(
                      foregroundColor:
                          MaterialStateProperty.all<Color>(Colors.blue),
                    ),
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const registrase(),
                      ));
                    },
                    child: const Text(
                      'Aun no tienes cuenta registrate?',
                      style: TextStyle(
                          fontSize: 15.0,
                          fontFamily: 'Righteous',
                          color: Colors.black),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
