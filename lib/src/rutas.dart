import 'package:flutter/material.dart';
import 'package:conredy/src/home.dart';
import 'package:conredy/src/mensajes.dart';
import 'package:conredy/src/noficaciones.dart';

class rutas extends StatelessWidget {
  final int index;
  const rutas({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    List<Widget> mylist = [pagina1(), const pagina2(), const pagina3()];
    return mylist[index];
  }
}
