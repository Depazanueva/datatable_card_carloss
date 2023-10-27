import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Carlos Samuel De Paz Villanueva'),
      ),
      body: Center(
        child: Card(
          margin: EdgeInsets.all(16),
          child: Padding(
            padding: EdgeInsets.all(16),
            child: Stack(
              children: <Widget>[
                // Contenido de la tarjeta
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    SizedBox(height: 100), // Espacio para la foto de perfil
                    Text(
                      'samueldepaz22@itca.edu.sv',
                      style: TextStyle(fontSize: 16),
                    ),
                    Text(
                      'Grupo: DSW22',
                      style: TextStyle(fontSize: 16),
                    ),
                    Text(
                      'Carrera: Técnico en Ingeniería en Desarrollo de Software',
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
                
                Positioned(
                  top: 5,
                  left: 20, 
                  child: CircleAvatar(
                    radius: 40, 
                    backgroundImage: AssetImage('assets/mi_foto.png'), 
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
