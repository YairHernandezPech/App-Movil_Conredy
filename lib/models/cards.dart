import 'package:conredy/src/metodoPago.dart';
import 'package:conredy/src/ubicacion.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class card1 extends StatelessWidget {
  const card1({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      /* height: size.height * 0.5,*/
      color: const Color.fromARGB(255, 239, 240, 240),
      padding: const EdgeInsets.all(20),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: const Color.fromARGB(255, 200, 200, 200),
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
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                    ),
                    child: CupertinoContextMenu(
                      actions: <Widget>[
                        CupertinoContextMenuAction(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          isDefaultAction: true,
                          trailingIcon: CupertinoIcons.money_dollar,
                          child: const Text('167,262,42'),
                        ),
                        CupertinoContextMenuAction(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          trailingIcon: CupertinoIcons.share,
                          child: const Text('Share '),
                        ),
                        CupertinoContextMenuAction(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const Pago(),
                            ));
                          },
                          trailingIcon: CupertinoIcons.shopping_cart,
                          child: const Text('Comprar'),
                        ),
                        CupertinoContextMenuAction(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => Ubicacion(),
                            ));
                          },
                          isDestructiveAction: false,
                          trailingIcon: Icons.location_on_outlined,
                          child: const Text('Ubicación'),
                        ),
                      ],
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: const Image(
                          image: AssetImage('images/casa1.jpg'),
                          width: 500,
                        ),
                      ),
                    )
                    /*Image.asset(
                    'images/casa1.jpg',
                    fit: BoxFit.cover,
                  ),*/
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
                          borderRadius: BorderRadius.circular(10),
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
                        icon: const Icon(
                          CupertinoIcons.heart,
                        ),
                        tooltip: 'Me gusta',
                        onPressed: () {
                          ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(content: Text('Me gusta')));
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

class card2 extends StatelessWidget {
  const card2({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      /* height: size.height * 0.5,*/
      color: const Color.fromARGB(255, 239, 240, 240),
      padding: const EdgeInsets.all(20),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: const Color.fromARGB(255, 200, 200, 200),
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
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                    ),
                    child: CupertinoContextMenu(
                      actions: <Widget>[
                        CupertinoContextMenuAction(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          isDefaultAction: true,
                          trailingIcon: CupertinoIcons.money_dollar,
                          child: const Text('167,262,42'),
                        ),
                        CupertinoContextMenuAction(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          trailingIcon: CupertinoIcons.share,
                          child: const Text('Share  '),
                        ),
                        CupertinoContextMenuAction(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const Pago(),
                            ));
                          },
                          trailingIcon: CupertinoIcons.shopping_cart,
                          child: const Text('Comprar'),
                        ),
                        CupertinoContextMenuAction(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => Ubicacion(),
                            ));
                          },
                          isDestructiveAction: false,
                          trailingIcon: Icons.location_on_outlined,
                          child: const Text('Ubicación'),
                        ),
                      ],
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: const Image(
                          image: AssetImage('images/casa2.jpg'),
                          width: 500,
                        ),
                      ),
                    )
                    /*Image.asset(
                    'images/casa1.jpg',
                    fit: BoxFit.cover,
                  ),*/
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
                          borderRadius: BorderRadius.circular(10),
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
                        icon: const Icon(
                          CupertinoIcons.heart,
                        ),
                        tooltip: 'Me gusta',
                        onPressed: () {
                          ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(content: Text('Me gusta')));
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

class card3 extends StatelessWidget {
  const card3({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      /* height: size.height * 0.5,*/
      color: const Color.fromARGB(255, 239, 240, 240),
      padding: const EdgeInsets.all(20),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: const Color.fromARGB(255, 200, 200, 200),
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
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                    ),
                    child: CupertinoContextMenu(
                      actions: <Widget>[
                        CupertinoContextMenuAction(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          isDefaultAction: true,
                          trailingIcon: CupertinoIcons.money_dollar,
                          child: const Text('167,262,42'),
                        ),
                        CupertinoContextMenuAction(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          trailingIcon: CupertinoIcons.share,
                          child: const Text('Share  '),
                        ),
                        CupertinoContextMenuAction(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const Pago(),
                            ));
                          },
                          trailingIcon: CupertinoIcons.shopping_cart,
                          child: const Text('Comprar'),
                        ),
                        CupertinoContextMenuAction(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => Ubicacion(),
                            ));
                          },
                          isDestructiveAction: false,
                          trailingIcon: Icons.location_on_outlined,
                          child: const Text('Ubicación'),
                        ),
                      ],
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: const Image(
                          image: AssetImage('images/casa3.jpg'),
                          width: 500,
                        ),
                      ),
                    )
                    /*Image.asset(
                    'images/casa1.jpg',
                    fit: BoxFit.cover,
                  ),*/
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
                        icon: const Icon(
                          CupertinoIcons.heart,
                        ),
                        tooltip: 'Me gusta',
                        onPressed: () {
                          ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(content: Text('Me gusta')));
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

class card4 extends StatelessWidget {
  const card4({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      /* height: size.height * 0.5,*/
      color: const Color.fromARGB(255, 239, 240, 240),
      padding: const EdgeInsets.all(20),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: const Color.fromARGB(255, 200, 200, 200),
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
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                    ),
                    child: CupertinoContextMenu(
                      actions: <Widget>[
                        CupertinoContextMenuAction(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          isDefaultAction: true,
                          trailingIcon: CupertinoIcons.money_dollar,
                          child: const Text('167,262,42'),
                        ),
                        CupertinoContextMenuAction(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          trailingIcon: CupertinoIcons.share,
                          child: const Text('Share  '),
                        ),
                        CupertinoContextMenuAction(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const Pago(),
                            ));
                          },
                          trailingIcon: CupertinoIcons.shopping_cart,
                          child: const Text('Comprar'),
                        ),
                        CupertinoContextMenuAction(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => Ubicacion(),
                            ));
                          },
                          isDestructiveAction: false,
                          trailingIcon: Icons.location_on_outlined,
                          child: const Text('Ubicación'),
                        ),
                      ],
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: const Image(
                          image: AssetImage('images/casa4.jpg'),
                          width: 500,
                        ),
                      ),
                    )
                    /*Image.asset(
                    'images/casa1.jpg',
                    fit: BoxFit.cover,
                  ),*/
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
                        icon: const Icon(
                          CupertinoIcons.heart,
                        ),
                        tooltip: 'Me gusta',
                        onPressed: () {
                          ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(content: Text('Me gusta')));
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

class card5 extends StatelessWidget {
  const card5({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      /* height: size.height * 0.5,*/
      color: const Color.fromARGB(255, 239, 240, 240),
      padding: const EdgeInsets.all(20),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: const Color.fromARGB(255, 200, 200, 200),
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
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                    ),
                    child: CupertinoContextMenu(
                      actions: <Widget>[
                        CupertinoContextMenuAction(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          isDefaultAction: true,
                          trailingIcon: CupertinoIcons.money_dollar,
                          child: const Text('167,262,42'),
                        ),
                        CupertinoContextMenuAction(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          trailingIcon: CupertinoIcons.share,
                          child: const Text('Share  '),
                        ),
                        CupertinoContextMenuAction(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const Pago(),
                            ));
                          },
                          trailingIcon: CupertinoIcons.shopping_cart,
                          child: const Text('Comprar'),
                        ),
                        CupertinoContextMenuAction(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => Ubicacion(),
                            ));
                          },
                          isDestructiveAction: false,
                          trailingIcon: Icons.location_on_outlined,
                          child: const Text('Ubicación'),
                        ),
                      ],
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: const Image(
                          image: AssetImage('images/casa6.jpg'),
                          width: 500,
                        ),
                      ),
                    )
                    /*Image.asset(
                    'images/casa1.jpg',
                    fit: BoxFit.cover,
                  ),*/
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
                        icon: const Icon(
                          CupertinoIcons.heart,
                        ),
                        tooltip: 'Me gusta',
                        onPressed: () {
                          ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(content: Text('Me gusta')));
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

class card6 extends StatelessWidget {
  const card6({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      /* height: size.height * 0.5,*/
      color: const Color.fromARGB(255, 239, 240, 240),
      padding: const EdgeInsets.all(20),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: const Color.fromARGB(255, 200, 200, 200),
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
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                    ),
                    child: CupertinoContextMenu(
                      actions: <Widget>[
                        CupertinoContextMenuAction(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          isDefaultAction: true,
                          trailingIcon: CupertinoIcons.money_dollar,
                          child: const Text('167,262,42'),
                        ),
                        CupertinoContextMenuAction(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          trailingIcon: CupertinoIcons.share,
                          child: const Text('Share  '),
                        ),
                        CupertinoContextMenuAction(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const Pago(),
                            ));
                          },
                          trailingIcon: CupertinoIcons.shopping_cart,
                          child: const Text('Comprar'),
                        ),
                        CupertinoContextMenuAction(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => Ubicacion(),
                            ));
                          },
                          isDestructiveAction: false,
                          trailingIcon: Icons.location_on_outlined,
                          child: const Text('Ubicación'),
                        ),
                      ],
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: const Image(
                          image: AssetImage('images/casa7.jpg'),
                          width: 500,
                        ),
                      ),
                    )
                    /*Image.asset(
                    'images/casa1.jpg',
                    fit: BoxFit.cover,
                  ),*/
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
                        icon: const Icon(
                          CupertinoIcons.heart,
                        ),
                        tooltip: 'Me gusta',
                        onPressed: () {
                          ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(content: Text('Me gusta')));
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

class card7 extends StatelessWidget {
  const card7({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      /* height: size.height * 0.5,*/
      color: const Color.fromARGB(255, 239, 240, 240),
      padding: const EdgeInsets.all(20),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: const Color.fromARGB(255, 200, 200, 200),
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
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                    ),
                    child: CupertinoContextMenu(
                      actions: <Widget>[
                        CupertinoContextMenuAction(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          isDefaultAction: true,
                          trailingIcon: CupertinoIcons.money_dollar,
                          child: const Text('167,262,42'),
                        ),
                        CupertinoContextMenuAction(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          trailingIcon: CupertinoIcons.share,
                          child: const Text('Share  '),
                        ),
                        CupertinoContextMenuAction(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const Pago(),
                            ));
                          },
                          trailingIcon: CupertinoIcons.shopping_cart,
                          child: const Text('Comprar'),
                        ),
                        CupertinoContextMenuAction(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => Ubicacion(),
                            ));
                          },
                          isDestructiveAction: false,
                          trailingIcon: Icons.location_on_outlined,
                          child: const Text('Ubicación'),
                        ),
                      ],
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: const Image(
                          image: AssetImage('images/casa1.jpg'),
                          width: 500,
                        ),
                      ),
                    )
                    /*Image.asset(
                    'images/casa1.jpg',
                    fit: BoxFit.cover,
                  ),*/
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
                        icon: const Icon(
                          CupertinoIcons.heart,
                        ),
                        tooltip: 'Me gusta',
                        onPressed: () {
                          ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(content: Text('Me gusta')));
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
