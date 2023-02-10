import 'package:carousel_slider/carousel_slider.dart';
import 'package:conredy/models/menulateral.dart';
import 'package:conredy/models/tema.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Modo extends StatefulWidget {
  Modo({super.key});

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<Modo> {
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
  // ignore: library_private_types_in_public_api
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final currentTheme = Provider.of<ThemeProvider>(context);
    final List<String> imgList = [
      'images/casa2.jpg',
      'images/casa1.jpg',
      'images/casa3.jpg',
      'images/casa2.jpg',
      'images/casa1.jpg',
    ];
    final List<Widget> imageSliders = imgList
        .map((item) => Container(
              child: Container(
                margin: EdgeInsets.all(5.0),
                child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(5.0)),
                    child: Stack(
                      children: <Widget>[
                        Image.network(item, fit: BoxFit.cover, width: 1000.0),
                        Positioned(
                          bottom: 0.0,
                          left: 0.0,
                          right: 0.0,
                          child: Container(
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  Color.fromARGB(200, 0, 0, 0),
                                  Color.fromARGB(0, 0, 0, 0)
                                ],
                                begin: Alignment.bottomCenter,
                                end: Alignment.topCenter,
                              ),
                            ),
                            padding: EdgeInsets.symmetric(
                                vertical: 10.0, horizontal: 20.0),
                            child: Text(
                              'No. ${imgList.indexOf(item)} image',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ],
                    )),
              ),
            ))
        .toList();
    return Scaffold(
      backgroundColor:
          currentTheme.isDarkTheme() ? Color(0xff2a293d) : Colors.white,
      appBar: AppBar(
        title: const Text(
          'CONREDY',
          style: TextStyle(
            fontFamily: 'Lobster',
          ),
        ),
        centerTitle: true,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
              Color.fromARGB(255, 114, 255, 231),
              Color.fromARGB(255, 18, 104, 243)
            ], begin: Alignment.bottomCenter, end: Alignment.topCenter
//Fin para cambiar el color del appBar
                ),
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            tooltip: 'Buscar',
            onPressed: () {
              ScaffoldMessenger.of(context)
                  .showSnackBar(const SnackBar(content: Text('Buscar')));
            },
          ),
        ],
      ),
      drawer: menulateral(),
      body: ListView(
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Row(
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
              ),

              const SizedBox(
                height: 20,
              ),

              Row(
                children: [
                  Icon(
                    Icons.star,
                    color: Colors.yellow,
                    size: 20,
                  ),
                  Text(
                    'Recomendados',
                    style: TextStyle(
                        fontSize: 25,
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontFamily: 'AkayaTelivigala'),
                  ),
                ],
              ),

              const SizedBox(
                height: 20,
              ),
              //aqui inicia lo del carrusel
              Container(
                child: CarouselSlider(
                  options: CarouselOptions(
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
                        child: CupertinoPageScaffold(
                          child: Center(
                            child: SizedBox(
                              width: 100,
                              height: 100,
                              child: CupertinoContextMenu(
                                actions: <Widget>[
                                  CupertinoContextMenuAction(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    trailingIcon: CupertinoIcons.share,
                                    child: const Text('Share  '),
                                  ),
                                  CupertinoContextMenuAction(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    trailingIcon: CupertinoIcons.heart,
                                    child: const Text('Favorite'),
                                  ),
                                  CupertinoContextMenuAction(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    trailingIcon: CupertinoIcons.bubble_left,
                                    child: const Text('Comentar'),
                                  ),
                                  CupertinoContextMenuAction(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    isDestructiveAction: true,
                                    trailingIcon: CupertinoIcons.delete,
                                    child: const Text('Delete'),
                                  ),
                                ],
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 228, 228, 228),
                                    borderRadius: BorderRadius.circular(5.0),
                                  ),
                                  child: const Image(
                                      image: AssetImage('images/casa1.jpg'),
                                      width: 500.0),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: CupertinoPageScaffold(
                          child: Center(
                            child: SizedBox(
                              width: 100,
                              height: 100,
                              child: CupertinoContextMenu(
                                actions: <Widget>[
                                  CupertinoContextMenuAction(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    trailingIcon: CupertinoIcons.share,
                                    child: const Text('Share  '),
                                  ),
                                  CupertinoContextMenuAction(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    trailingIcon: CupertinoIcons.heart,
                                    child: const Text('Favorite'),
                                  ),
                                  CupertinoContextMenuAction(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    trailingIcon: CupertinoIcons.bubble_left,
                                    child: const Text('Comentar'),
                                  ),
                                  CupertinoContextMenuAction(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    isDestructiveAction: true,
                                    trailingIcon: CupertinoIcons.delete,
                                    child: const Text('Delete'),
                                  ),
                                ],
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 228, 228, 228),
                                    borderRadius: BorderRadius.circular(5.0),
                                  ),
                                  child: const Image(
                                      image: AssetImage('images/casa2.jpg'),
                                      width: 500.0),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: CupertinoPageScaffold(
                          child: Center(
                            child: SizedBox(
                              width: 100,
                              height: 100,
                              child: CupertinoContextMenu(
                                actions: <Widget>[
                                  CupertinoContextMenuAction(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    trailingIcon: CupertinoIcons.share,
                                    child: const Text('Share  '),
                                  ),
                                  CupertinoContextMenuAction(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    trailingIcon: CupertinoIcons.heart,
                                    child: const Text('Favorite'),
                                  ),
                                  CupertinoContextMenuAction(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    trailingIcon: CupertinoIcons.bubble_left,
                                    child: const Text('Comentar'),
                                  ),
                                  CupertinoContextMenuAction(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    isDestructiveAction: true,
                                    trailingIcon: CupertinoIcons.delete,
                                    child: const Text('Delete'),
                                  ),
                                ],
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 228, 228, 228),
                                    borderRadius: BorderRadius.circular(5.0),
                                  ),
                                  child: const Image(
                                      image: AssetImage('images/casa3.jpg'),
                                      width: 500.0),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
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
                        child: CupertinoPageScaffold(
                          child: Center(
                            child: SizedBox(
                              width: 100,
                              height: 100,
                              child: CupertinoContextMenu(
                                actions: <Widget>[
                                  CupertinoContextMenuAction(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    trailingIcon: CupertinoIcons.share,
                                    child: const Text('Share  '),
                                  ),
                                  CupertinoContextMenuAction(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    trailingIcon: CupertinoIcons.heart,
                                    child: const Text('Favorite'),
                                  ),
                                  CupertinoContextMenuAction(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    trailingIcon: CupertinoIcons.bubble_left,
                                    child: const Text('Comentar'),
                                  ),
                                  CupertinoContextMenuAction(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    isDestructiveAction: true,
                                    trailingIcon: CupertinoIcons.delete,
                                    child: const Text('Delete'),
                                  ),
                                ],
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 228, 228, 228),
                                    borderRadius: BorderRadius.circular(5.0),
                                  ),
                                  child: const Image(
                                      image: AssetImage('images/casa4.jpg'),
                                      width: 500.0),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: CupertinoPageScaffold(
                          child: Center(
                            child: SizedBox(
                              width: 100,
                              height: 100,
                              child: CupertinoContextMenu(
                                actions: <Widget>[
                                  CupertinoContextMenuAction(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    trailingIcon: CupertinoIcons.share,
                                    child: const Text('Share  '),
                                  ),
                                  CupertinoContextMenuAction(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    trailingIcon: CupertinoIcons.heart,
                                    child: const Text('Favorite'),
                                  ),
                                  CupertinoContextMenuAction(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    trailingIcon: CupertinoIcons.bubble_left,
                                    child: const Text('Comentar'),
                                  ),
                                  CupertinoContextMenuAction(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    isDestructiveAction: true,
                                    trailingIcon: CupertinoIcons.delete,
                                    child: const Text('Delete'),
                                  ),
                                ],
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 228, 228, 228),
                                    borderRadius: BorderRadius.circular(5.0),
                                  ),
                                  child: const Image(
                                      image: AssetImage('images/casa5.jpeg'),
                                      width: 500.0),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: CupertinoPageScaffold(
                          child: Center(
                            child: SizedBox(
                              width: 100,
                              height: 100,
                              child: CupertinoContextMenu(
                                actions: <Widget>[
                                  CupertinoContextMenuAction(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    trailingIcon: CupertinoIcons.share,
                                    child: const Text('Share  '),
                                  ),
                                  CupertinoContextMenuAction(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    trailingIcon: CupertinoIcons.heart,
                                    child: const Text('Favorite'),
                                  ),
                                  CupertinoContextMenuAction(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    trailingIcon: CupertinoIcons.bubble_left,
                                    child: const Text('Comentar'),
                                  ),
                                  CupertinoContextMenuAction(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    isDestructiveAction: true,
                                    trailingIcon: CupertinoIcons.delete,
                                    child: const Text('Delete'),
                                  ),
                                ],
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 228, 228, 228),
                                    borderRadius: BorderRadius.circular(5.0),
                                  ),
                                  child: const Image(
                                      image: AssetImage('images/casa6.jpg'),
                                      width: 500.0),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
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
                        child: CupertinoPageScaffold(
                          child: Center(
                            child: SizedBox(
                              width: 100,
                              height: 100,
                              child: CupertinoContextMenu(
                                actions: <Widget>[
                                  CupertinoContextMenuAction(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    trailingIcon: CupertinoIcons.share,
                                    child: const Text('Share  '),
                                  ),
                                  CupertinoContextMenuAction(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    trailingIcon: CupertinoIcons.heart,
                                    child: const Text('Favorite'),
                                  ),
                                  CupertinoContextMenuAction(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    trailingIcon: CupertinoIcons.bubble_left,
                                    child: const Text('Comentar'),
                                  ),
                                  CupertinoContextMenuAction(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    isDestructiveAction: true,
                                    trailingIcon: CupertinoIcons.delete,
                                    child: const Text('Delete'),
                                  ),
                                ],
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 228, 228, 228),
                                    borderRadius: BorderRadius.circular(5.0),
                                  ),
                                  child: const Image(
                                      image: AssetImage('images/casa7.jpg'),
                                      width: 500.0),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: CupertinoPageScaffold(
                          child: Center(
                            child: SizedBox(
                              width: 100,
                              height: 100,
                              child: CupertinoContextMenu(
                                actions: <Widget>[
                                  CupertinoContextMenuAction(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    trailingIcon: CupertinoIcons.share,
                                    child: const Text('Share  '),
                                  ),
                                  CupertinoContextMenuAction(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    trailingIcon: CupertinoIcons.heart,
                                    child: const Text('Favorite'),
                                  ),
                                  CupertinoContextMenuAction(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    trailingIcon: CupertinoIcons.bubble_left,
                                    child: const Text('Comentar'),
                                  ),
                                  CupertinoContextMenuAction(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    isDestructiveAction: true,
                                    trailingIcon: CupertinoIcons.delete,
                                    child: const Text('Delete'),
                                  ),
                                ],
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 228, 228, 228),
                                    borderRadius: BorderRadius.circular(5.0),
                                  ),
                                  child: const Image(
                                      image: AssetImage('images/casa1.jpg'),
                                      width: 500.0),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: CupertinoPageScaffold(
                          child: Center(
                            child: SizedBox(
                              width: 100,
                              height: 100,
                              child: CupertinoContextMenu(
                                actions: <Widget>[
                                  CupertinoContextMenuAction(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    trailingIcon: CupertinoIcons.share,
                                    child: const Text('Share  '),
                                  ),
                                  CupertinoContextMenuAction(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    trailingIcon: CupertinoIcons.heart,
                                    child: const Text('Favorite'),
                                  ),
                                  CupertinoContextMenuAction(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    trailingIcon: CupertinoIcons.bubble_left,
                                    child: const Text('Comentar'),
                                  ),
                                  CupertinoContextMenuAction(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    isDestructiveAction: true,
                                    trailingIcon: CupertinoIcons.delete,
                                    child: const Text('Delete'),
                                  ),
                                ],
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 228, 228, 228),
                                    borderRadius: BorderRadius.circular(5.0),
                                  ),
                                  child: const Image(
                                      image: AssetImage('images/casa2.jpg'),
                                      width: 500.0),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
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
                        child: CupertinoPageScaffold(
                          child: Center(
                            child: SizedBox(
                              width: 100,
                              height: 100,
                              child: CupertinoContextMenu(
                                actions: <Widget>[
                                  CupertinoContextMenuAction(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    trailingIcon: CupertinoIcons.share,
                                    child: const Text('Share  '),
                                  ),
                                  CupertinoContextMenuAction(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    trailingIcon: CupertinoIcons.heart,
                                    child: const Text('Favorite'),
                                  ),
                                  CupertinoContextMenuAction(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    trailingIcon: CupertinoIcons.bubble_left,
                                    child: const Text('Comentar'),
                                  ),
                                  CupertinoContextMenuAction(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    isDestructiveAction: true,
                                    trailingIcon: CupertinoIcons.delete,
                                    child: const Text('Delete'),
                                  ),
                                ],
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 228, 228, 228),
                                    borderRadius: BorderRadius.circular(5.0),
                                  ),
                                  child: const Image(
                                      image: AssetImage('images/casa3.jpg'),
                                      width: 500.0),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: CupertinoPageScaffold(
                          child: Center(
                            child: SizedBox(
                              width: 100,
                              height: 100,
                              child: CupertinoContextMenu(
                                actions: <Widget>[
                                  CupertinoContextMenuAction(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    trailingIcon: CupertinoIcons.share,
                                    child: const Text('Share  '),
                                  ),
                                  CupertinoContextMenuAction(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    trailingIcon: CupertinoIcons.heart,
                                    child: const Text('Favorite'),
                                  ),
                                  CupertinoContextMenuAction(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    trailingIcon: CupertinoIcons.bubble_left,
                                    child: const Text('Comentar'),
                                  ),
                                  CupertinoContextMenuAction(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    isDestructiveAction: true,
                                    trailingIcon: CupertinoIcons.delete,
                                    child: const Text('Delete'),
                                  ),
                                ],
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 228, 228, 228),
                                    borderRadius: BorderRadius.circular(5.0),
                                  ),
                                  child: const Image(
                                      image: AssetImage('images/casa4.jpg'),
                                      width: 500.0),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: CupertinoPageScaffold(
                          child: Center(
                            child: SizedBox(
                              width: 100,
                              height: 100,
                              child: CupertinoContextMenu(
                                actions: <Widget>[
                                  CupertinoContextMenuAction(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    trailingIcon: CupertinoIcons.share,
                                    child: const Text('Share  '),
                                  ),
                                  CupertinoContextMenuAction(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    trailingIcon: CupertinoIcons.heart,
                                    child: const Text('Favorite'),
                                  ),
                                  CupertinoContextMenuAction(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    trailingIcon: CupertinoIcons.bubble_left,
                                    child: const Text('Comentar'),
                                  ),
                                  CupertinoContextMenuAction(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    isDestructiveAction: true,
                                    trailingIcon: CupertinoIcons.delete,
                                    child: const Text('Delete'),
                                  ),
                                ],
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 228, 228, 228),
                                    borderRadius: BorderRadius.circular(5.0),
                                  ),
                                  child: const Image(
                                      image: AssetImage('images/casa5.jpeg'),
                                      width: 500.0),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
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
                        child: CupertinoPageScaffold(
                          child: Center(
                            child: SizedBox(
                              width: 100,
                              height: 100,
                              child: CupertinoContextMenu(
                                actions: <Widget>[
                                  CupertinoContextMenuAction(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    trailingIcon: CupertinoIcons.share,
                                    child: const Text('Share  '),
                                  ),
                                  CupertinoContextMenuAction(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    trailingIcon: CupertinoIcons.heart,
                                    child: const Text('Favorite'),
                                  ),
                                  CupertinoContextMenuAction(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    trailingIcon: CupertinoIcons.bubble_left,
                                    child: const Text('Comentar'),
                                  ),
                                  CupertinoContextMenuAction(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    isDestructiveAction: true,
                                    trailingIcon: CupertinoIcons.delete,
                                    child: const Text('Delete'),
                                  ),
                                ],
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 228, 228, 228),
                                    borderRadius: BorderRadius.circular(5.0),
                                  ),
                                  child: const Image(
                                      image: AssetImage('images/casa6.jpg'),
                                      width: 500.0),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: CupertinoPageScaffold(
                          child: Center(
                            child: SizedBox(
                              width: 100,
                              height: 100,
                              child: CupertinoContextMenu(
                                actions: <Widget>[
                                  CupertinoContextMenuAction(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    trailingIcon: CupertinoIcons.share,
                                    child: const Text('Share  '),
                                  ),
                                  CupertinoContextMenuAction(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    trailingIcon: CupertinoIcons.heart,
                                    child: const Text('Favorite'),
                                  ),
                                  CupertinoContextMenuAction(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    trailingIcon: CupertinoIcons.bubble_left,
                                    child: const Text('Comentar'),
                                  ),
                                  CupertinoContextMenuAction(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    isDestructiveAction: true,
                                    trailingIcon: CupertinoIcons.delete,
                                    child: const Text('Delete'),
                                  ),
                                ],
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 228, 228, 228),
                                    borderRadius: BorderRadius.circular(5.0),
                                  ),
                                  child: const Image(
                                      image: AssetImage('images/casa7.jpg'),
                                      width: 500.0),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: CupertinoPageScaffold(
                          child: Center(
                            child: SizedBox(
                              width: 100,
                              height: 100,
                              child: CupertinoContextMenu(
                                actions: <Widget>[
                                  CupertinoContextMenuAction(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    trailingIcon: CupertinoIcons.share,
                                    child: const Text('Share  '),
                                  ),
                                  CupertinoContextMenuAction(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    trailingIcon: CupertinoIcons.heart,
                                    child: const Text('Favorite'),
                                  ),
                                  CupertinoContextMenuAction(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    trailingIcon: CupertinoIcons.bubble_left,
                                    child: const Text('Comentar'),
                                  ),
                                  CupertinoContextMenuAction(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    isDestructiveAction: true,
                                    trailingIcon: CupertinoIcons.delete,
                                    child: const Text('Delete'),
                                  ),
                                ],
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 228, 228, 228),
                                    borderRadius: BorderRadius.circular(5.0),
                                  ),
                                  child: const Image(
                                      image: AssetImage('images/casa1.jpg'),
                                      width: 500.0),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
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
                        child: CupertinoPageScaffold(
                          child: Center(
                            child: SizedBox(
                              width: 100,
                              height: 100,
                              child: CupertinoContextMenu(
                                actions: <Widget>[
                                  CupertinoContextMenuAction(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    trailingIcon: CupertinoIcons.share,
                                    child: const Text('Share  '),
                                  ),
                                  CupertinoContextMenuAction(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    trailingIcon: CupertinoIcons.heart,
                                    child: const Text('Favorite'),
                                  ),
                                  CupertinoContextMenuAction(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    trailingIcon: CupertinoIcons.bubble_left,
                                    child: const Text('Comentar'),
                                  ),
                                  CupertinoContextMenuAction(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    isDestructiveAction: true,
                                    trailingIcon: CupertinoIcons.delete,
                                    child: const Text('Delete'),
                                  ),
                                ],
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 228, 228, 228),
                                    borderRadius: BorderRadius.circular(5.0),
                                  ),
                                  child: const Image(
                                      image: AssetImage('images/casa2.jpg'),
                                      width: 500.0),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: CupertinoPageScaffold(
                          child: Center(
                            child: SizedBox(
                              width: 100,
                              height: 100,
                              child: CupertinoContextMenu(
                                actions: <Widget>[
                                  CupertinoContextMenuAction(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    trailingIcon: CupertinoIcons.share,
                                    child: const Text('Share  '),
                                  ),
                                  CupertinoContextMenuAction(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    trailingIcon: CupertinoIcons.heart,
                                    child: const Text('Favorite'),
                                  ),
                                  CupertinoContextMenuAction(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    trailingIcon: CupertinoIcons.bubble_left,
                                    child: const Text('Comentar'),
                                  ),
                                  CupertinoContextMenuAction(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    isDestructiveAction: true,
                                    trailingIcon: CupertinoIcons.delete,
                                    child: const Text('Delete'),
                                  ),
                                ],
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 228, 228, 228),
                                    borderRadius: BorderRadius.circular(5.0),
                                  ),
                                  child: const Image(
                                      image: AssetImage('images/casa3.jpg'),
                                      width: 500.0),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: CupertinoPageScaffold(
                          child: Center(
                            child: SizedBox(
                              width: 100,
                              height: 100,
                              child: CupertinoContextMenu(
                                actions: <Widget>[
                                  CupertinoContextMenuAction(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    trailingIcon: CupertinoIcons.share,
                                    child: const Text('Share  '),
                                  ),
                                  CupertinoContextMenuAction(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    trailingIcon: CupertinoIcons.heart,
                                    child: const Text('Favorite'),
                                  ),
                                  CupertinoContextMenuAction(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    trailingIcon: CupertinoIcons.bubble_left,
                                    child: const Text('Comentar'),
                                  ),
                                  CupertinoContextMenuAction(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    isDestructiveAction: true,
                                    trailingIcon: CupertinoIcons.delete,
                                    child: const Text('Delete'),
                                  ),
                                ],
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 228, 228, 228),
                                    borderRadius: BorderRadius.circular(5.0),
                                  ),
                                  child: const Image(
                                      image: AssetImage('images/casa4.jpg'),
                                      width: 500.0),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
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
                        child: CupertinoPageScaffold(
                          child: Center(
                            child: SizedBox(
                              width: 100,
                              height: 100,
                              child: CupertinoContextMenu(
                                actions: <Widget>[
                                  CupertinoContextMenuAction(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    trailingIcon: CupertinoIcons.share,
                                    child: const Text('Share  '),
                                  ),
                                  CupertinoContextMenuAction(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    trailingIcon: CupertinoIcons.heart,
                                    child: const Text('Favorite'),
                                  ),
                                  CupertinoContextMenuAction(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    trailingIcon: CupertinoIcons.bubble_left,
                                    child: const Text('Comentar'),
                                  ),
                                  CupertinoContextMenuAction(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    isDestructiveAction: true,
                                    trailingIcon: CupertinoIcons.delete,
                                    child: const Text('Delete'),
                                  ),
                                ],
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 228, 228, 228),
                                    borderRadius: BorderRadius.circular(5.0),
                                  ),
                                  child: const Image(
                                      image: AssetImage('images/casa5.jpeg'),
                                      width: 500.0),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: CupertinoPageScaffold(
                          child: Center(
                            child: SizedBox(
                              width: 100,
                              height: 100,
                              child: CupertinoContextMenu(
                                actions: <Widget>[
                                  CupertinoContextMenuAction(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    trailingIcon: CupertinoIcons.share,
                                    child: const Text('Share  '),
                                  ),
                                  CupertinoContextMenuAction(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    trailingIcon: CupertinoIcons.heart,
                                    child: const Text('Favorite'),
                                  ),
                                  CupertinoContextMenuAction(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    trailingIcon: CupertinoIcons.bubble_left,
                                    child: const Text('Comentar'),
                                  ),
                                  CupertinoContextMenuAction(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    isDestructiveAction: true,
                                    trailingIcon: CupertinoIcons.delete,
                                    child: const Text('Delete'),
                                  ),
                                ],
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 228, 228, 228),
                                    borderRadius: BorderRadius.circular(5.0),
                                  ),
                                  child: const Image(
                                      image: AssetImage('images/casa5.jpeg'),
                                      width: 500.0),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: CupertinoPageScaffold(
                          child: Center(
                            child: SizedBox(
                              width: 100,
                              height: 100,
                              child: CupertinoContextMenu(
                                actions: <Widget>[
                                  CupertinoContextMenuAction(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    trailingIcon: CupertinoIcons.share,
                                    child: const Text('Share  '),
                                  ),
                                  CupertinoContextMenuAction(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    trailingIcon: CupertinoIcons.heart,
                                    child: const Text('Favorite'),
                                  ),
                                  CupertinoContextMenuAction(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    trailingIcon: CupertinoIcons.bubble_left,
                                    child: const Text('Comentar'),
                                  ),
                                  CupertinoContextMenuAction(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    isDestructiveAction: true,
                                    trailingIcon: CupertinoIcons.delete,
                                    child: const Text('Delete'),
                                  ),
                                ],
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 228, 228, 228),
                                    borderRadius: BorderRadius.circular(5.0),
                                  ),
                                  child: const Image(
                                      image: AssetImage('images/casa6.jpg'),
                                      width: 500.0),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
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
