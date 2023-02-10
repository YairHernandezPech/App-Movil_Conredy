import 'package:conredy/oscla.dart';
import 'package:conredy/src/acercaDeConredy.dart';
import 'package:conredy/src/ayuda.dart';
import 'package:conredy/src/inicioSec.dart';
import 'package:conredy/src/noficaciones.dart';
import 'package:conredy/src/perfil.dart';
import 'package:flutter/material.dart';

class menulateral extends StatelessWidget {
  const menulateral({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        // Remove padding
        padding: EdgeInsets.zero,

        children: [
          UserAccountsDrawerHeader(
            accountName: const Text(
              'EdilsonHP',
              style: TextStyle(fontSize: 25.0, fontFamily: 'AkayaTelivigala'),
            ),
            accountEmail: Text(''),
            otherAccountsPictures: const [
              Icon(
                Icons.camera_alt_outlined,
                color: Color.fromARGB(255, 251, 250, 250),
              ),
            ],
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.asset(
                  'images/perfil.jpg',
                  fit: BoxFit.cover,
                  width: 90,
                  height: 90,
                ),
              ),
            ),
            decoration: const BoxDecoration(
              color: Colors.grey,
              image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage('images/fondo1.jpg'),
                  opacity: 10.0),
            ),
          ),
          InkWell(
            child: const ListTile(
              leading: Icon(Icons.account_circle),
              title: Text('Perfil'),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ProfileWidget()),
              );
            },
          ),
          InkWell(
            child: const ListTile(
              leading: Icon(Icons.notifications),
              title: Text('Notificaciones'),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const pagina3()),
              );
            },
          ),
          InkWell(
            child: const ListTile(
              leading: Icon(Icons.help),
              title: Text('Ayuda'),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ayuda()),
              );
            },
          ),
          InkWell(
            child: const ListTile(
              leading: Icon(Icons.perm_device_information),
              title: Text('Acerca de Conredy'),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const AcercaDConredy()),
              );
            },
          ),
          InkWell(
            child: const ListTile(
              leading: Icon(Icons.exit_to_app),
              title: Text('Salir'),
            ),
            onTap: () {
              Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (BuildContext) => const inicioSec()));
            },
          ),
        ],
      ),

      /*child: ListView(
        padding: EdgeInsets.zero,
        children: const <Widget>[

          DrawerHeader(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color.fromARGB(255, 114, 255, 231),
                  Color.fromARGB(255, 18, 104, 243)
                ],
              ),
            ),
            //Fin para cambiar el color del appBar
            child: Image(
              image: AssetImage('images/usuario.png'),
              height: 50,
              width: 50,
            ),
          ),
          ListTile(
            leading: Icon(Icons.account_circle),
            title: Text('Perfil'),
            onTap: null,
          ),
          ListTile(
            leading: Icon(Icons.help),
            title: Text('Ayuda'),
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Configuración'),
          ),
          ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text('Salir'),
          ),
        ],
      ),*/
    );
  }
}
