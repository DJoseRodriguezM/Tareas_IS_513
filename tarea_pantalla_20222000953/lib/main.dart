import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            leading: IconButton(
              icon: const Icon(Icons.close),
              onPressed: () {},
            ),
            title: const Text(
              'Cuentas de Google',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
            actions: [
              IconButton(
                icon: const Icon(Icons.info),
                onPressed: () {},
                iconSize: 20,
              ),
              IconButton(
                icon: const Icon(Icons.search),
                onPressed: () {},
                iconSize: 20,
              ),
              IconButton(
                icon: Image.network(
                    'https://cdn-icons-png.flaticon.com/128/32/32904.png'),
                onPressed: () {},
                iconSize: 20,
              )
            ],
            backgroundColor: Colors.grey[200],
            bottom: const TabBar(
              isScrollable: true,
              indicatorColor: Colors.blue,
              labelColor: Colors.blue,
              tabs: [
                Tab(
                  text: 'Página Principal',
                ),
                Tab(
                  text: 'Información Personal',
                ),
                Tab(
                  text: 'Seguridad y Privacidad',
                ),
              ],
            ),
          ),
          body: const TabBarView(
            children: [
              Card(
                margin: EdgeInsets.all(0.0),
                color: Colors.white,
                child: ListTile(
                  tileColor: Colors.white,
                  selectedTileColor: Colors.white,
                  dense: false,
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 35.0, horizontal: 15.0),
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                        color: Color.fromARGB(255, 218, 218, 218), width: 1.0),
                    borderRadius: BorderRadius.zero,
                  ),
                  title: Text(
                    'Tu cuenta está protegida ',
                    style: TextStyle(color: Colors.black),
                    textAlign: TextAlign.left,
                  ),
                  subtitle: Column(children: [
                    Text(
                      'La Verificacion de seguridad revisó tu cuenta y no encontró acciones recomendadas.',
                      style: TextStyle(color: Colors.grey),
                      textAlign: TextAlign.left,
                    ),
                    Text(
                      'Más información',
                      style: TextStyle(color: Colors.blue),
                      textAlign: TextAlign.left,
                    ),
                  ]),
                  trailing: FlutterLogo(
                    size: 100,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
