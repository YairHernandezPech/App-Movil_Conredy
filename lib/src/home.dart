// ignore_for_file: avoid_unnecessary_containers

import 'package:carousel_slider/carousel_slider.dart';
import 'package:conredy/models/cards.dart';
import 'package:conredy/models/menulateral.dart';
import 'package:conredy/models/search.dart';
import 'package:conredy/models/tema.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class pagina1 extends StatefulWidget {
  pagina1({super.key});

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<pagina1> {
  // ignore: unnecessary_new
  ThemeProvider themeChangeProvider = new ThemeProvider();

  @override
  void initState() {
    super.initState();
    getCurrentAppTheme();
  }

  void getCurrentAppTheme() async {
    themeChangeProvider.setTheme =
        await themeChangeProvider.themePreference.getTheme();
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider.value(
      value: themeChangeProvider,
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Theming',
        home: MyHomePage(title: 'Flutter theming'),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final currentTheme = Provider.of<ThemeProvider>(context);
    final List<String> imgList = [
      'images/anuncio3.jpg',
      'images/anuncio1.jpg',
      'images/anuncio4.jpg',
      'images/anuncio5.jpg',
      'images/anuncio2.jpg',
    ];
    final List<Widget> imageSliders = imgList
        .map((item) => Container(
              child: Container(
                margin: const EdgeInsets.all(5.0),
                child: ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(5.0)),
                    child: Stack(
                      children: <Widget>[
                        Image.asset(item, fit: BoxFit.cover, width: 1000.0),
                        Positioned(
                          bottom: 0.0,
                          left: 0.0,
                          right: 0.0,
                          child: Container(
                            decoration: const BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  Color.fromARGB(200, 0, 0, 0),
                                  Color.fromARGB(0, 0, 0, 0)
                                ],
                                begin: Alignment.bottomCenter,
                                end: Alignment.topCenter,
                              ),
                            ),
                            padding: const EdgeInsets.symmetric(
                                vertical: 10.0, horizontal: 20.0),
                          ),
                        ),
                      ],
                    )),
              ),
            ))
        .toList();
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 228, 223, 223),
      appBar: AppBar(
        title: const Text(
          "Conredy",
          style: TextStyle(color: Colors.white, fontFamily: 'AkayaTelivigala'),
        ),
        /*const TextField(
          enableInteractiveSelection: false,
          autofocus: true,
          decoration: InputDecoration(
              hintText: 'Buscar en Conredy',
              prefixIcon: Icon(Icons.search),
              //suffixIcon: const Icon(Icons.account_circle),
              fillColor: Color.fromARGB(255, 255, 255, 255),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(20.0)),
              )),
        ),*/
        actions: [
          IconButton(
              onPressed: () => Navigator.of(context)
                  .push(MaterialPageRoute(builder: (_) => search())),
              icon: const Icon(Icons.search))
        ],
        centerTitle: true,
        backgroundColor: Colors.grey,
      ),
      drawer: menulateral(),
      body: ListView(
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              /*Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Icon(Icons.wb_sunny,
                      color: currentTheme.isDarkTheme()
                          ? Colors.white
                          : Colors.black),
                  Switch(
                      value: currentTheme.isDarkTheme(),
                      onChanged: (value) {
                        String newTheme = value
                            ? ThemePreference.DARK
                            : ThemePreference.LIGHT;
                        currentTheme.setTheme = newTheme;
                      }),
                  Icon(Icons.brightness_2,
                      color: currentTheme.isDarkTheme()
                          ? Colors.white
                          : Colors.black)
                ],
              ),*/

              const SizedBox(
                height: 20,
              ),
              /*SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    SpecialCard1(),
                    SpecialCard2(),
                    SpecialCard3(),
                    SpecialCard4(),
                    const SizedBox(
                      width: 5,
                    ),
                  ],
                ),
              ),

              Row(
                children: [
                  const Icon(
                    Icons.star,
                    color: Colors.yellow,
                    size: 20,
                  ),
                  Text(
                    '    Recomendados',
                    style: TextStyle(
                        fontSize: 25,
                        color: currentTheme.isDarkTheme()
                            ? Colors.white
                            : Colors.black,
                        fontFamily: 'AkayaTelivigala'),
                  ),
                ],
              ),

              const SizedBox(
                height: 20,
              ),*/
              //aqui inicia lo del carrusel
              Container(
                child: CarouselSlider(
                  options: CarouselOptions(
                    height: 150,
                    autoPlay: true,
                    aspectRatio: 1.5,
                    viewportFraction: 0.9,
                    enlargeStrategy: CenterPageEnlargeStrategy.height,
                    enlargeCenterPage: true,
                  ),
                  items: imageSliders,
                ),
              ),
              //aqui termina
              const SizedBox(
                height: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Expanded(
                          child: SingleChildScrollView(
                        child: Column(
                          children: [
                            const card1(),
                          ],
                        ),
                      )),
                    ],
                  ),
                ],
              ),
              //aqui se empieza para hacer los cuadros de fila de a tres
              const SizedBox(
                height: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Expanded(
                          child: SingleChildScrollView(
                        child: Column(
                          children: [
                            const card2(),
                          ],
                        ),
                      )),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Expanded(
                          child: SingleChildScrollView(
                        child: Column(
                          children: [
                            const card3(),
                          ],
                        ),
                      )),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Expanded(
                          child: SingleChildScrollView(
                        child: Column(
                          children: [
                            const card4(),
                          ],
                        ),
                      )),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Expanded(
                          child: SingleChildScrollView(
                        child: Column(
                          children: [
                            const card5(),
                          ],
                        ),
                      )),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Expanded(
                          child: SingleChildScrollView(
                        child: Column(
                          children: [
                            const card6(),
                          ],
                        ),
                      )),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Expanded(
                          child: SingleChildScrollView(
                        child: Column(
                          children: [
                            const card7(),
                          ],
                        ),
                      )),
                    ],
                  ),
                ],
              ),
              const Center(
                child: CupertinoActivityIndicator(
                    radius: 15.0, color: Color.fromARGB(255, 11, 129, 255)),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
/*
Widget SpecialCard2() {
  return Padding(
    padding: EdgeInsets.only(left: 20),
    child: GestureDetector(
      onTap: () {},
      child: const SizedBox(
        width: 150,
        height: 100,
        child: ClipRRect(
          // borderRadius: BorderRadius.circular(20),
          child: Image(image: AssetImage('images/anuncio1.png')),
        ),
      ),
    ),
  );
}

Widget SpecialCard3() {
  return Padding(
    padding: EdgeInsets.only(left: 20),
    child: GestureDetector(
      onTap: () {},
      child: const SizedBox(
        width: 100,
        height: 90,
        child: ClipRRect(
          // borderRadius: BorderRadius.circular(20),
          child: Image(image: AssetImage('images/anuncio2.jpg')),
        ),
      ),
    ),
  );
}

Widget SpecialCard4() {
  return Padding(
    padding: EdgeInsets.only(left: 20),
    child: GestureDetector(
      onTap: () {},
      child: const SizedBox(
        width: 150,
        height: 100,
        child: ClipRRect(
          // borderRadius: BorderRadius.circular(20),
          child: Image(image: AssetImage('images/anuncio1.png')),
        ),
      ),
    ),
  );
}

Widget SpecialCard1() {
  return Padding(
    padding: EdgeInsets.only(left: 20),
    child: GestureDetector(
      onTap: () {},
      child: const SizedBox(
        width: 100,
        height: 90,
        child: ClipRRect(
          // borderRadius: BorderRadius.circular(20),
          child: Image(
            image: AssetImage('images/anuncio2.jpg'),
          ),
        ),
      ),
    ),
  );
}
*/
/*Widget SpecialCard5() {
  return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 150,
        decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: const BorderRadius.all(
              Radius.circular(32),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.grey[850]!.withOpacity(0.29),
                offset: const Offset(-10, 10),
                blurRadius: 10,
              )
            ],
            image: const DecorationImage(
                image: AssetImage('images/anuncio2.jpg'), fit: BoxFit.cover)),
      ));
}
*/
