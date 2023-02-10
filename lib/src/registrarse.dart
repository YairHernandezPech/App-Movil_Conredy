import 'package:conredy/src/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class registrase extends StatelessWidget {
  const registrase({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Login",
      home: registrases(),
    );
  }
}

class registrases extends StatefulWidget {
  const registrases({super.key});

  @override
  State<registrases> createState() => _registrasesState();
}

class _registrasesState extends State<registrases> {
  void _showAlertDialog(BuildContext context) {
    showCupertinoModalPopup<void>(
      context: context,
      builder: (BuildContext context) => CupertinoAlertDialog(
        title: const Text('CONREDY'),
        content: const Text(
            'Podras comprar y vender casas de manera segura y sobre todo de manera online.¿Quieres crear tu cuenta?'),
        actions: <CupertinoDialogAction>[
          CupertinoDialogAction(
            /// This parameter indicates this action is the default,
            /// and turns the action's text to bold text.
            isDefaultAction: true,
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text('No'),
          ),
          CupertinoDialogAction(
            /// This parameter indicates the action would perform
            /// a destructive action such as deletion, and turns
            /// the action's text color to red.
            isDestructiveAction: true,
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => pagina1(),
              ));
            },
            child: const Text('Yes'),
          ),
        ],
      ),
    );
  }

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
                    'Registrarse',
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
                    decoration: InputDecoration(
                        hintText: 'Email',
                        labelText: 'Email',
                        suffixIcon: const Icon(Icons.alternate_email),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.0))),
                  ),
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
                  TextButton(
                    onPressed: () => showDialog<String>(
                      context: context,
                      builder: (BuildContext context) => AlertDialog(
                        title: const Text('CONREDY'),
                        content: const Text(
                            'Podras comprar casas de manera segura y sobre todo de manera online.¿Quieres crear tu cuenta?'),
                        actions: <Widget>[
                          TextButton(
                            onPressed: () => Navigator.pop(context, 'Cancel'),
                            child: const Text('No'),
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => pagina1(),
                              ));
                            },
                            child: const Text('Si'),
                          ),
                        ],
                      ),
                    ),
                    style: TextButton.styleFrom(
                        backgroundColor:
                            const Color.fromARGB(255, 177, 167, 167)),
                    child: const Text(
                      'Registrarse',
                      style: TextStyle(
                          fontSize: 25.0,
                          color: Colors.black,
                          fontFamily: 'AkayaTelivigala'),
                    ),
                  ),
                  /*
                  SizedBox(
                    child: ElevatedButton(
                      onPressed: () => _showAlertDialog(context),
                      style: TextButton.styleFrom(
                          backgroundColor:
                              const Color.fromARGB(255, 177, 167, 167)),
                      child: const Text(
                        "Registrarse",
                        style: TextStyle(
                            fontSize: 25.0,
                            color: Colors.black,
                            fontFamily: 'AkayaTelivigala'),
                      ),
                    ),
                  ),*/
                  const SizedBox(
                    height: 125.0,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const <Widget>[
                  Expanded(
                    child: Text(
                      " Iniciar sesión con las redes sociales ",
                      style: TextStyle(fontSize: 15.0, fontFamily: 'Righteous'),
                    ),
                  ),
                  Icon(Icons.message),
                  Icon(Icons.facebook),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
