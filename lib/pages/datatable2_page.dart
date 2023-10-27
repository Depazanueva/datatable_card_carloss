import 'package:flutter/material.dart';

class DataTable2Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DataTable 2'),
      ),
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black, width: 2),
          ),
          child: DataTable(
            dataRowHeight: 80,
            dataTextStyle: TextStyle(fontSize: 16, color: Colors.black), // Establece el color de texto en negro
            headingRowHeight: 90,
            horizontalMargin: 20,
            columns: [
              DataColumn(
                label: Text(
                  'Item',
                  style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black), // Establece el color de texto en negro
                ),
              ),
              DataColumn(
                label: Text(
                  'Descripción',
                  style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black), // Establece el color de texto en negro
                ),
              ),
            ],
            rows: [
              DataRow(
                cells: [
                  DataCell(
                    Text(
                      'Pera',
                      style: TextStyle(color: Colors.black), // Establece el color de texto en negro
                    ),
                  ),
                  DataCell(
                    Text(
                      'La pera es una fruta jugosa y refrescante con una textura suave.',
                      style: TextStyle(color: Colors.black), // Establece el color de texto en negro
                    ),
                  ),
                ],
              ),
              DataRow(
                cells: [
                  DataCell(
                    Text(
                      'Fresa',
                      style: TextStyle(color: Colors.black), // Establece el color de texto en negro
                    ),
                  ),
                  DataCell(
                    Text(
                      'Las fresas son pequeñas frutas rojas que son dulces y deliciosas.',
                      style: TextStyle(color: Colors.black), // Establece el color de texto en negro
                    ),
                  ),
                ],
              ),
              DataRow(
                cells: [
                  DataCell(
                    Text(
                      'Kiwi',
                      style: TextStyle(color: Colors.black), // Establece el color de texto en negro
                    ),
                  ),
                  DataCell(
                    Text(
                      'El kiwi es una fruta pequeña y peluda llena de vitamina C.',
                      style: TextStyle(color: Colors.black), // Establece el color de texto en negro
                    ),
                  ),
                ],
              ),
              DataRow(
                cells: [
                  DataCell(
                    Text(
                      'Mango',
                      style: TextStyle(color: Colors.black), // Establece el color de texto en negro
                    ),
                  ),
                  DataCell(
                    Text(
                      'El mango es una fruta tropical con un sabor dulce y jugoso.',
                      style: TextStyle(color: Colors.black), // Establece el color de texto en negro
                    ),
                  ),
                ],
              ),
              // Puedes agregar más filas de datos con estilo de texto en negro según sea necesario
            ],
          ),
        ),
      ),
    );
  }
}
