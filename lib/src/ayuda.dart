import 'package:flutter/material.dart';

class ayuda extends StatefulWidget {
  const ayuda({super.key});

  @override
  State<ayuda> createState() => _ayudaState();
}

class _ayudaState extends State<ayuda> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: const Text(
          'Ayuda',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      backgroundColor: Color.fromARGB(255, 209, 209, 209),
      body: Stack(
        children: <Widget>[gr],
      ),
    );
  }

  get gr => Expanded(
        child: Container(
          padding: EdgeInsets.only(left: 16, right: 16, bottom: 16),
          child: GridView.count(
            crossAxisSpacing: 16,
            mainAxisSpacing: 16,
            crossAxisCount: 2,
            childAspectRatio: .90,
            children: <Widget>[
              GestureDetector(
                onTap: () {},
                child: Container(
                    child: Card(
                  elevation: 10,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                  child: Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: const <Widget>[
                        Image(
                          image: AssetImage('images/icoperfil.png'),
                          width: 200,
                          height: 150,
                        ),
                        Text(
                          'Configuración de la cuenta',
                          style: TextStyle(
                              // fontSize: 15.0,
                              color: Colors.black,
                              fontFamily: 'AkayaTelivigala'),
                        )
                      ],
                    ),
                  ),
                )),
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                    child: Card(
                  elevation: 10,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                  child: Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: const <Widget>[
                        Image(
                          image: AssetImage('images/icollave.png'),
                          width: 200,
                          height: 150,
                        ),
                        Text(
                          'Contraseña',
                          style: TextStyle(
                              // fontSize: 20.0,
                              color: Colors.black,
                              fontFamily: 'AkayaTelivigala'),
                        )
                      ],
                    ),
                  ),
                )),
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                    child: Card(
                  elevation: 10,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                  child: Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: const <Widget>[
                        Image(
                          image: AssetImage('images/icocandando.png'),
                          width: 200,
                          height: 150,
                        ),
                        Text(
                          ' Privacidad y  seguridad',
                          style: TextStyle(
                              //fontSize: 20.0,
                              color: Colors.black,
                              fontFamily: 'AkayaTelivigala'),
                        )
                      ],
                    ),
                  ),
                )),
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                    child: Card(
                  elevation: 10,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                  child: Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: const <Widget>[
                        Image(
                          image: AssetImage(
                            'images/icopreguntas.png',
                          ),
                          width: 200,
                          height: 150,
                        ),
                        Text(
                          'Preguntas',
                          style: TextStyle(
                              //fontSize: 20.0,
                              color: Colors.black,
                              fontFamily: 'AkayaTelivigala'),
                        )
                      ],
                    ),
                  ),
                )),
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                    child: Card(
                  elevation: 10,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                  child: Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: const <Widget>[
                        Image(
                          image: AssetImage('images/icocancelar.png'),
                          width: 200,
                          height: 150,
                        ),
                        Text(
                          'Cancelar compra',
                          style: TextStyle(
                              //fontSize: 20.0,
                              color: Colors.black,
                              fontFamily: 'AkayaTelivigala'),
                        )
                      ],
                    ),
                  ),
                )),
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                    child: Card(
                  elevation: 10,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                  child: Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: const <Widget>[
                        Image(
                          image: AssetImage('images/icodevolucion.png'),
                          width: 200,
                          height: 150,
                        ),
                        Text(
                          'Devoluciones y renvolsos',
                          style: TextStyle(
                              // fontSize: 20.0,
                              color: Colors.black,
                              fontFamily: 'AkayaTelivigala'),
                        )
                      ],
                    ),
                  ),
                )),
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                    child: Card(
                  elevation: 10,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                  child: Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: const <Widget>[
                        Image(
                          image: AssetImage('images/icomapa.png'),
                          width: 200,
                          height: 150,
                        ),
                        Text(
                          'Cambiar Ubicación',
                          style: TextStyle(
                              //fontSize: 20.0,
                              color: Colors.black,
                              fontFamily: 'AkayaTelivigala'),
                        )
                      ],
                    ),
                  ),
                )),
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                    child: Card(
                  elevation: 10,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                  child: Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: const <Widget>[
                        Image(
                          image: AssetImage('images/icocontacto.png'),
                          width: 200,
                          height: 150,
                        ),
                        Text(
                          'Contactanos',
                          style: TextStyle(
                              //fontSize: 20.0,
                              color: Colors.black,
                              fontFamily: 'AkayaTelivigala'),
                        )
                      ],
                    ),
                  ),
                )),
              ),
            ],
          ),
        ),
      );
}
