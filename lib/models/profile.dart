import 'package:flutter/material.dart';

class profile extends StatelessWidget {
  const profile({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      /* height: size.height * 0.5,*/
      color: Color.fromARGB(255, 239, 240, 240),
      padding: const EdgeInsets.all(20),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Color.fromARGB(255, 200, 200, 200),
          boxShadow: [
            const BoxShadow(
              color: Colors.black45,
              offset: Offset(0, 7),
              spreadRadius: 2,
              blurRadius: 10,
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                  child: Image.asset(
                    'images/casa2.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  top: 10,
                  right: 10,
                  child: Container(
                    width: 60,
                    height: 30,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Color.fromARGB(255, 227, 227, 227),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5.0),
                      child: Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.yellow,
                            size: 20,
                          ),
                          Text(
                            '4.2',
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Merida Yucatán',
                      ),
                      Container(
                        width: 65,
                        height: 25,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color(0xfff47c8a),
                          gradient: const LinearGradient(
                            colors: [
                              Color(0xfff4aa7c),
                              Color(0xfff47c8a),
                            ],
                          ),
                        ),
                        child: const Center(
                          child: Text(
                            'Zenderas',
                          ),
                        ),
                      ),
                      IconButton(
                        icon: const Icon(Icons.more_vert),
                        tooltip: 'Buscar',
                        onPressed: () {
                          ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(content: Text('Buscar')));
                        },
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'Carretera Mérida - Motul, C. 10 y, 97305',
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class indicador extends StatelessWidget {
  const indicador({super.key, required this.number, required this.text});
  final String number, text;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          number,
          style: TextStyle(
              fontSize: 20.0,
              color: Color.fromARGB(255, 6, 84, 251),
              fontFamily: 'AkayaTelivigala'),
        ),
        Text(
          text,
        ),
      ],
    );
  }
}

class CartaPerfil extends StatelessWidget {
  const CartaPerfil({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      height: size.height * 0.6,
      color: Color.fromARGB(255, 235, 235, 235),
      child: Padding(
        padding: const EdgeInsets.only(top: 50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ClipOval(
              child: Image.asset(
                'images/perfil.jpg',
                width: size.width * 0.3,
              ),
            ),
            const Text.rich(
              TextSpan(
                text: 'Yair Hernandez \n',
                style: TextStyle(
                    fontSize: 25.0,
                    color: Color.fromARGB(255, 3, 3, 3),
                    fontFamily: 'AkayaTelivigala'),
                children: [
                  TextSpan(
                    text: '\n YairHP@gmail.com',
                    style: TextStyle(
                        fontSize: 20.0,
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontFamily: 'AkayaTelivigala'),
                  )
                ],
              ),
              textAlign: TextAlign.center,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                indicador(
                  number: '250',
                  text: 'Reviews',
                ),
                indicador(
                  number: '100k',
                  text: 'Followers',
                ),
                indicador(
                  number: '30',
                  text: 'Following',
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const FloatingActionButton.extended(
                  onPressed: null,
                  icon: Icon(Icons.share),
                  label: Text(' Compartir '),
                ),
                const Icon(Icons.facebook),
                const Icon(Icons.bluetooth),
                const Icon(Icons.add_to_drive),
              ],
            )
          ],
        ),
      ),
    );
  }
}
