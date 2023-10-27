import 'package:flutter/material.dart';
import 'package:datatable_card_carlos/pages/datatable2_page.dart';
import 'package:datatable_card_carlos/pages/card_page.dart';
import 'package:datatable_card_carlos/pages/datatable1_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Colores',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.red),
        primarySwatch: Colors.deepPurple,
      ),
      home: const MyHomePage(title: 'DataTable & Card Widgets'),
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
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: Text(widget.title),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primary,
              ),
              child: Text(
                'Menú',
                style: TextStyle(color: Colors.white, fontSize: 40),
              ),
            ),
            ListTile(
              leading: Icon(Icons.color_lens), // Icono para DataTable Colores
              title: Text('DataTable Colores'),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(context, MaterialPageRoute(builder: (context) => DataTable1Page()));
              },
            ),
            ListTile(
              leading: Icon(Icons.local_florist), // Icono para DataTable Frutas
              title: Text('DataTable Frutas'),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(context, MaterialPageRoute(builder: (context) => DataTable2Page()));
              },
            ),
            ListTile(
              leading: Icon(Icons.credit_card), // Icono para Card
              title: Text('Card'),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(context, MaterialPageRoute(builder: (context) => CardPage()));
              },
            ),
          ],
        ),
      ),
      body: Center(
  child: Padding(
    padding: const EdgeInsets.all(20), // Agregamos un margen de 20 en todos los lados
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Bienvenido a mi demostracion de Widgets', // Puedes personalizar este contenido
          textAlign: TextAlign.center, // Texto justificado
        ),
        SizedBox(height: 20), // Espacio entre las líneas de texto
        Text(
          'Un DataTable Widget es una tabla que muestra datos de manera organizada. Es útil para presentar información en filas y columnas, lo que facilita la visualización y el análisis de datos.',
          style: TextStyle(fontWeight: FontWeight.bold),
          textAlign: TextAlign.justify, // Texto justificado
        ),
        SizedBox(height: 20), // Espacio entre las líneas de texto
        Text(
          'Un Card Widget es una tarjeta que se utiliza para mostrar información de manera elegante y organizada. Puede contener texto, imágenes y otros widgets, lo que lo hace versátil para la presentación de contenido.',
          style: TextStyle(fontWeight: FontWeight.bold),
          textAlign: TextAlign.justify, // Texto justificado
        ),
      ],
    ),
  ),
),

    );
  }
}
