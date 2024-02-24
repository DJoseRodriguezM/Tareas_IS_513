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
              onPressed: () {
                // Lógica para cerrar la aplicación
              },
            ),
            title: const Text(
              'Cuentas de Google',
              style: TextStyle(
                fontSize: 15, // Adjust the font size as needed
                fontWeight: FontWeight.bold, // Add font weight if desired
              ),
            ),
            actions: [
              IconButton(
                icon: const Icon(Icons.info),
                onPressed: () {
                  // Lógica para mostrar información
                },
                iconSize: 20,
              ),
              IconButton(
                icon: const Icon(Icons.search),
                onPressed: () {
                  // Lógica para realizar la búsqueda
                },
                iconSize: 20,
              ),
              IconButton(
                icon: Image.network(
                    'https://cdn-icons-png.flaticon.com/128/32/32904.png'),
                onPressed: () {
                  // Lógica para realizar la búsqueda
                },
                iconSize: 20,
              )
            ],
            backgroundColor: Colors.grey[200],
            bottom: const TabBar(
              isScrollable: true,
              indicatorColor: Colors.blue, // Set the indicator color to blue
              labelColor: Colors.blue, // Set the label color to blue
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
              
              Column(
                children: [
                  Row(
                    children: [
                      Text(
                        'Tu cuenta está protegida',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
