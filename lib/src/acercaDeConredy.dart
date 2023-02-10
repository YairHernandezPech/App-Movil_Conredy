import 'package:flutter/material.dart';

class AcercaDConredy extends StatelessWidget {
  const AcercaDConredy({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Acerca de Conredy"),
        centerTitle: true,
        backgroundColor: Colors.grey,
      ),
      backgroundColor: Color.fromARGB(255, 209, 209, 209),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 70.0, vertical: 20.0),
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // ignore: prefer_const_constructor
              const SizedBox(
                height: 1,
              ),
              const CircleAvatar(
                radius: 90.0,
                backgroundColor: Colors.transparent,
                backgroundImage: AssetImage('images/ico.png'),
              ),
              const SizedBox(
                width: 5,
              ),
              const Text(
                'Conredy Libre para Andriod',
                style: TextStyle(fontSize: 15.0, color: Colors.black),
              ),
              const SizedBox(
                height: 5,
              ),
              const Text(
                '1.0',
                style: TextStyle(fontFamily: 'cursive', fontSize: 15.0),
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                'El presente canal de construccion es',
                style: TextStyle(
                    fontSize: 15.0, color: Color.fromARGB(255, 66, 65, 65)),
              ),
              const Text(
                'operado por Conredy Yucatán',
                style: TextStyle(
                    fontSize: 15.0, color: Color.fromARGB(255, 66, 65, 65)),
              ),
              const Text(
                ' S.de R.L. de C.V identificada bajo',
                style: TextStyle(
                    fontSize: 15.0, color: Color.fromARGB(255, 66, 65, 65)),
              ),
              const Text(
                'la marca comercial "Conredy"',
                style: TextStyle(
                    fontSize: 15.0, color: Color.fromARGB(255, 66, 65, 65)),
              ),
              const Text(
                'Copyright ®  2016 - 2022 Conredy Inc.',
                style: TextStyle(
                    fontSize: 15.0, color: Color.fromARGB(255, 66, 65, 65)),
              ),
              const Text(
                'or its affiliates',
                style: TextStyle(
                    fontSize: 15.0, color: Color.fromARGB(255, 66, 65, 65)),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Calle 31 No. 425 por 28 y 28 A Esquina,Col.',
                style: TextStyle(
                    fontSize: 13.0, color: Color.fromARGB(255, 25, 25, 25)),
              ),
              const Text(
                'Polígono 108, Mérida, Yucatán, México.',
                style: TextStyle(
                    fontSize: 13.0, color: Color.fromARGB(255, 25, 25, 25)),
              ),
              //Esto es para hacer como un cuadro de texto //Para dar espacio entre algo
              const Divider(
                height: 90.0,
              ),

              SizedBox(
                child: ElevatedButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 61, 129, 198),
                  ),
                  child: const Text(
                    "Calificar en Play Store",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
/*
class AcercaD extends StatefulWidget {
  const AcercaD({super.key});

  @override
  State<AcercaD> createState() => _AcercaDState();
}

class _AcercaDState extends State<AcercaD> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Acerca de Conredy"),
        centerTitle: true,
        backgroundColor: Colors.grey,
      ),
      backgroundColor: Color.fromARGB(255, 209, 209, 209),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 70.0, vertical: 20.0),
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // ignore: prefer_const_constructor
              const SizedBox(
                height: 1,
              ),
              const CircleAvatar(
                radius: 90.0,
                backgroundColor: Colors.transparent,
                backgroundImage: AssetImage('images/ico.png'),
              ),
              const SizedBox(
                width: 5,
              ),
              const Text(
                'Conredy Libre para Andriod',
                style: TextStyle(fontSize: 15.0, color: Colors.black),
              ),
              const SizedBox(
                height: 5,
              ),
              const Text(
                '1.0',
                style: TextStyle(fontFamily: 'cursive', fontSize: 15.0),
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                'El presente canal de construccion y ambiante,',
                style: TextStyle(
                    fontSize: 15.0, color: Color.fromARGB(255, 66, 65, 65)),
              ),
              const Text(
                'es operado por Conredy.com de Yucatán,',
                style: TextStyle(
                    fontSize: 15.0, color: Color.fromARGB(255, 66, 65, 65)),
              ),
              const Text(
                ' S.de R.L. de C.V identificada bajo',
                style: TextStyle(
                    fontSize: 15.0, color: Color.fromARGB(255, 66, 65, 65)),
              ),
              const Text(
                'la marca comercial "Conredy"',
                style: TextStyle(
                    fontSize: 15.0, color: Color.fromARGB(255, 66, 65, 65)),
              ),
              const Text(
                'Copyright ®  2016 - 2022 Conredy Inc."',
                style: TextStyle(
                    fontSize: 15.0, color: Color.fromARGB(255, 66, 65, 65)),
              ),
              const Text(
                'or its affiliates"',
                style: TextStyle(
                    fontSize: 15.0, color: Color.fromARGB(255, 66, 65, 65)),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Calle 31 No. 425 por 28 y 28 A Esquina,Col. Polígono 108, Mérida, Yucatán, México.',
                style: TextStyle(
                    fontSize: 13.0, color: Color.fromARGB(255, 25, 25, 25)),
              ),
              //Esto es para hacer como un cuadro de texto //Para dar espacio entre algo
              const Divider(
                height: 90.0,
              ),

              SizedBox(
                child: ElevatedButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 61, 129, 198),
                  ),
                  child: const Text(
                    "Calificar en Play Store",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
*/